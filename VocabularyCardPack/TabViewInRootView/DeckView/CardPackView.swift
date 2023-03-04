//
//  CardPackView.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/03/03.
//

import SwiftUI

struct CardPackView: View {
    let cardPack: CardPack
    
    var body: some View {
        List(cardPack.cards) { card in
            Text(card.word)
        }
        .navigationTitle(cardPack.cardPackTitle)
    }
}

struct CardPackView_Previews: PreviewProvider {
    static var previews: some View {
        CardPackView(cardPack: CardPack("cardPackTitle"))
    }
}
