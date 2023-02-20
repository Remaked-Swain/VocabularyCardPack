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
            List(deck.cardPacks) { cardPack in
                DeckListCell(cardPack: cardPack)
            }
            .navigationTitle("덱")
            .toolbar {
                ToolbarItemGroup(placement: .navigationBarTrailing) {
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
}

struct DeckListCell: View {
    let cardPack: VocaCardPack
    
    var body: some View {
        DisclosureGroup(content: {
            ForEach(cardPack.cards, id: \.title) { voca in
                Text(voca.title)
            }
        }, label: {
            Text(cardPack.cardPackName)
                .bold()
                .foregroundColor(Color.blue)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DeckView()
            .environmentObject(Deck(""))
    }
}
