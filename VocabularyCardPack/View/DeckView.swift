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
                    List(deck.cardPacks) { cardPack in
                        DeckListCell(deck: deck)
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
    let deck: Deck
    
    var body: some View {
        DisclosureGroup(content: {
            ForEach(deck.cardPacks) { cardPack in
                Text(cardPack.cardPackName)
            }
        }, label: {
            Text(deck.deckName)
                .bold()
                .foregroundColor(Color.blue)
        })
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
    @State private var cardPackName: String = ""
    @Binding var isPresented: Bool
    
    var body: some View {
        NavigationView {
            Form {
                Section(content: {
                    TextField("카드팩 제목", text: $cardPackName, prompt: Text("카드팩의 제목을 정해주세요."))
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
    
    func addCardPack() {
        if cardPackName.isEmpty {
            cardPackName = "새로운 카드팩"
        }
        
        deck.addCardPack(VocaCardPack(cardPackName))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DeckView()
            .environmentObject(Deck(""))
    }
}
