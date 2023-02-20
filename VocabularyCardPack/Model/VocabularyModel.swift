//
//  VocabularyModel.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/02/20.
//

import Foundation

// Basic Object in VocabularyCardPackApp
struct Voca {
    var title: String
    var description: String
}

// VocaCardPack made of a few Voca object
class VocaCardPack: Identifiable, ObservableObject {
    let id = UUID()
    var vocaList: [Voca]
    var cardPackName: String
    
    init(_ cardPackName: String) {
        self.cardPackName = cardPackName == "" ? "새로운 카드팩" : cardPackName
        self.vocaList = [Voca]()
    }
}

// Deck made of a few VocaCardPack object
class Deck: Identifiable, ObservableObject {
    let id = UUID()
    var cardPacks: [VocaCardPack] = [
            VocaCardPack("sample1"),
            VocaCardPack("sample2"),
            VocaCardPack("sample3"),
            VocaCardPack("")
        ]
    var deckName: String
    
    init(_ deckName: String) {
        self.deckName = deckName == "" ? "새로운 덱" : deckName
//        self.cardPacks = [VocaCardPack]()
    }
}
