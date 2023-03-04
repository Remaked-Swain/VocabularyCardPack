//
//  Deck.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/03/01.
//

import Foundation

// Deck Model
struct Card: Identifiable {
    let id = UUID()
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
        self.cards = [
            Card(word: "단어1", mean: "의미1"),
            Card(word: "단어2", mean: "의미2"),
            Card(word: "단어3", mean: "의미3"),
            Card(word: "단어4", mean: "의미4")
        ]
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
        self.cardPacks = [
            CardPack("카드팩1"),
            CardPack("카드팩2"),
            CardPack("카드팩3"),
            CardPack("카드팩4")
        ]
        _deckTitle = "나의 덱"
    }
    
    func addCardPack(_ cardPack: CardPack) {
        self.cardPacks.append(cardPack)
    }
}
