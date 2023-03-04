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
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CardPackView_Previews: PreviewProvider {
    static var previews: some View {
        CardPackView(cardPack: CardPack("cardPackTitle"))
    }
}
