//
//  ContentView.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/02/20.
//

import SwiftUI

struct DeckView: View {
    @EnvironmentObject var deck: Deck
    
    var body: some View {
        NavigationView {
            ZStack {
                if deck.cardPacks.isEmpty {
                    EmptyDeckView()
                }
                
                List(deck.cardPacks) { cardPack in
                    DeckListCell(deck: deck)
                }
            }
            .navigationTitle("덱")
            .toolbar {
                Button(action: {
                    
                }, label: {
                    Image(systemName: "plus.app")
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DeckView()
            .environmentObject(Deck(""))
    }
}
