//
//  MainHeaderView.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/03/01.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Text("Deck Name")
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
    }
}
