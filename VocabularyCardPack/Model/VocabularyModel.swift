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
    var cardPackName: String
    var cards: [Voca]
    
    init(_ cardPackName: String) {
        self.cardPackName = cardPackName == "" ? "새로운 카드팩" : cardPackName
        self.cards = [Voca]()
    }
    
    func addCard(_ card: Voca) {
        self.cards.append(card)
    }
}

// Deck made of a few VocaCardPack object
class Deck: Identifiable, ObservableObject {
    let id = UUID()
    var deckName: String {
        get {
            return self.deckName
        }
        
        set {
            self.deckName = newValue
        }
    }
    var cardPacks: [VocaCardPack]
    
    init(_ deckName: String) {
        self.cardPacks = [VocaCardPack]()
    }
    
    func addCardPack(_ cardPack: VocaCardPack) {
        self.cardPacks.append(cardPack)
    }
}
