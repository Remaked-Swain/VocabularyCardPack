//
//  DeckListItem.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/03/01.
//

import SwiftUI

struct DeckListItem: View {
    let cardPack: CardPack
    
    var body: some View {
        NavigationLink(destination: CardPackView(cardPack: cardPack)) {
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .font(.system(size: 30))
                    .foregroundColor(Color.secondary)
                    .frame(width: 160, height: 120)

                VStack(spacing: 20) {
                    Text(cardPack.cardPackTitle)
                        .font(.title)
                        .bold()
                    Text("카드 보유량: \(cardPack.cards.count)")
                }
            }
        }
        .padding()
        .tint(Color.primary)
    }
}

struct DeckListItem_Previews: PreviewProvider {
    static var previews: some View {
        DeckListItem(cardPack: CardPack("예시 제목"))
    }
}
