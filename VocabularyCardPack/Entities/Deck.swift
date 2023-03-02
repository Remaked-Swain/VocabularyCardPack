//
//  Deck.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/03/01.
//

import Foundation

// Deck Model
struct Card {
    var word: String
    var mean: String
}

class CardPack: Identifiable, ObservableObject {
    @Published var cards: [Card]
    let id: UUID
    private var _cardPackTitle: String
    var cardPackTitle: String {
        get { return self._cardPackTitle }
        set { self._cardPackTitle = newValue }
    }
    var count: Int {
        return self.cards.count
    }
    
    init(_ cardPackTitle: String) {
        self.cards = [Card]()
        self.id = UUID()
        self._cardPackTitle = cardPackTitle
    }
    
    func addCard(_ card: Card) {
        self.cards.append(card)
    }
}

class Deck: ObservableObject {
    @Published var cardPacks: [CardPack]
    private var _deckTitle: String
    var deckTitle: String {
        get { return self._deckTitle }
        set { self._deckTitle = newValue }
    }
    
    init() {
        self.cardPacks = [CardPack]()
        _deckTitle = "나의 덱"
    }
    
    func addCardPack(_ cardPack: CardPack) {
        self.cardPacks.append(cardPack)
    }
}
