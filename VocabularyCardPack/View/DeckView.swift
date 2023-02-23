//
//  ContentView.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/02/20.
//

import SwiftUI

struct DeckView: View {
    @EnvironmentObject var deck: Deck
    @State private var isPresented: Bool = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if deck.cardPacks.isEmpty {
                    EmptyDeckView()
                } else {
                    ScrollView(.vertical) {
                        ForEach(deck.cardPacks, id: \.id) { cardPack in
                            DeckListCell(cardPack: cardPack)
                        }
                    }
                }
            }
            .navigationTitle("덱")
            .toolbar {
                Button(action: {
                    isPresented.toggle()
                }, label: {
                    Image(systemName: "plus.app")
                })
                .sheet(isPresented: $isPresented, content: {
                    EditCardPackView(isPresented: $isPresented)
                })
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "list.bullet")
                })
            }
            
        }
    }
}

struct DeckListCell: View {
    let cardPack: VocaCardPack
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 25)
                .frame(width: 320, height: 120)
                .foregroundColor(Color.secondary)
            
            VStack(alignment: .listRowSeparatorLeading) {
                Text(cardPack.cardPackName)
                    .font(.title2)
                    .bold()
                Text("카드 보유량: \(cardPack.cards.count)개")
            }
        }
    }
}

struct EmptyDeckView: View {
    var body: some View {
        VStack {
            Image(systemName: "zzz")
                .resizable()
                .frame(width: 60, height: 60)
            Text("덱이 비어있습니다!")
                .bold()
                .padding()
        }
    }
}

struct EditCardPackView: View {
    @EnvironmentObject var deck: Deck
    @State private var tmpCardPackName: String = ""
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            Form {
                Section(content: {
                    TextField("카드팩 제목", text: $tmpCardPackName, prompt: Text("카드팩의 제목을 정해주세요."))
                }, header: {
                    Text("카드팩 제목")
                })
            }
            .navigationTitle("카드팩 추가")
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(role: .cancel, action: {
                        isPresented.toggle()
                    }, label: {
                        Text("취소")
                    })
                }
                
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        addCardPack()
                        isPresented.toggle()
                    }, label: {
                        Text("저장")
                    })
                }
            }
        }
    }
    
    private func addCardPack() {
        if tmpCardPackName.isEmpty {
            tmpCardPackName = "새로운 카드팩"
        }
        
        deck.addCardPack(VocaCardPack(tmpCardPackName))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DeckView()
            .environmentObject(Deck())
    }
}
