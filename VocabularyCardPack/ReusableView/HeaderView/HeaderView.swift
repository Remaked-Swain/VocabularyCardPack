//
//  MainHeaderView.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/03/01.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var deck: Deck
    
    var body: some View {
        HStack {
            Text(deck.deckTitle)
                .font(.largeTitle)
                .bold()
            Spacer()
            
        }
        .padding()
    }
}

struct MainHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
            .environmentObject(Deck())
    }
}
