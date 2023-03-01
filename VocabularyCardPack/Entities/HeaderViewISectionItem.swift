//
//  HeaderViewISectionItem.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/03/01.
//

import Foundation

enum HeaderViewSectionItem: String, Identifiable {
    case searching
    case writing
    case adjusting
    
    var id: String {
        return self.rawValue
    }
    
    var systemImageName: String {
        switch self {
        case .searching: return "magnifyingglass"
        case .writing: return "square.and.pencil"
        case .adjusting: return "
        }
    }
}
