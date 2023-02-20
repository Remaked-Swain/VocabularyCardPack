//
//  VocabularyCardPackApp.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/02/20.
//

import SwiftUI

@main
struct VocabularyCardPackApp: App {
    var deck = Deck("")
    
    var body: some Scene {
        WindowGroup {
            DeckView()
                .environmentObject(deck)
        }
    }
}
