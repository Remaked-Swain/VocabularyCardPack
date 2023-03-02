//
//  DeckView.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/03/01.
//

import SwiftUI

struct DeckView: View {
    @EnvironmentObject var deck: Deck
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: [.init(), .init()]) {
                ForEach(deck.cardPacks, id: \.id) { cardPack in
                    DeckListItem(cardPack: cardPack)
                }
            }
        }
        .padding()
    }
}

struct DeckView_Previews: PreviewProvider {
    static var previews: some View {
        DeckView()
            .environmentObject(Deck())
    }
}
