//
//  MainHeaderView.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/03/01.
//

import SwiftUI

struct HeaderView: View {
    @EnvironmentObject var deck: Deck
    @Binding var tabViewSelection: TabViewSelection
    
    var body: some View {
        HStack {
            Text(deck.deckTitle)
                .font(.largeTitle)
                .bold()
            Spacer()
            HeaderButtonSectionView(tabViewSelection: $tabViewSelection)
        }
        .padding()
    }
}

struct HeaderButtonSectionView: View {
    @Binding var tabViewSelection: TabViewSelection
    
    var body: some View {
        let buttonList: [String] = tabViewSelection.headerViewButtonList.map {$0.systemName}
        
        HStack(spacing: 15) {
            ForEach(buttonList, id: \.self) { buttonName in
                Button {
                    
                } label: {
                    Image(systemName: buttonName)
                        .foregroundColor(Color.black)
                }
            }
        }
        .padding(.horizontal)
    }
}

struct MainHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(tabViewSelection: .constant(TabViewSelection.deck))
            .environmentObject(Deck())
    }
}
