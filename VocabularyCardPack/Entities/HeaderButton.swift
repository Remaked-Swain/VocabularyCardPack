//
//  HeaderButton.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/03/02.
//

import Foundation

enum HeaderButton: String, Identifiable {
    case searching
    case writing
    case managing
    
    var id: String {
        switch self {
        case .searching: return "searching"
        case .writing: return "writing"
        case .managing: return "managing"
        }
    }
    
    var systemName: String {
        switch self {
        case .searching: return "magnifyingglass"
        case .writing: return "square.and.pencil"
        case .managing: return "slider.horizontal.3"
        }
    }
}

enum TabViewSelection {
    case deck
    case testing
    case setting
    
    var headerViewButtonList: [HeaderButton] {
        switch self {
        case .deck: return [.searching, .writing, .managing]
        case .testing: return [.managing]
        case .setting: return []
        }
    }
}
