//
//  ContentView.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/02/20.
//

import SwiftUI

struct DeckList: View {
    @StateObject var deck = Deck("새로운 덱")
    
    var body: some View {
        NavigationView {
            List(deck.cardPacks) { cardPack in
                DeckListCell(cardPack: cardPack)
            }
            .navigationTitle("덱")
        }
    }
}

struct DeckListCell: View {
    let cardPack: VocaCardPack
    
    var body: some View {
        DisclosureGroup(content: {
            ForEach(cardPack.vocaList, id: \.title) { voca in
                Text(voca.title)
            }
        }, label: {
            Text(cardPack.cardPackName)
                .bold()
                .foregroundColor(Color.cyan)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DeckList()
    }
}
