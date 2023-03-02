//
//  ContentView.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/03/01.
//

import SwiftUI

struct ContentView: View {
    @State private var tabViewSelection: TabViewSelection = .deck
    
    var body: some View {
        VStack {
            HeaderView(tabViewSelection: $tabViewSelection)
            
            TabView(selection: $tabViewSelection) {
                DeckView()
                    .tabItem {
                        Label("덱", systemImage: "rectangle.stack")
                    }
                    .tag(TabViewSelection.deck)
                
                TestingView()
                    .tabItem {
                        Label("테스트", systemImage: "questionmark.square")
                    }
                    .tag(TabViewSelection.testing)
                
                SettingView()
                    .tabItem {
                        Label("설정", systemImage: "gearshape")
                    }
                    .tag(TabViewSelection.setting)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(Deck())
    }
}
