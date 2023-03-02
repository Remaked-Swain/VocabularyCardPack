//
//  ContentView.swift
//  VocabularyCardPack
//
//  Created by Swain Yun on 2023/03/01.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                HeaderView()
                
                TabView {
                    DeckView()
                        .tabItem {
                            Label("덱", systemImage: "rectangle.stack")
                        }
                        .tag(0)
                    
                    TestingView()
                        .tabItem {
                            Label("테스트", systemImage: "questionmark.square")
                        }
                        .tag(1)
                    
                    SettingView()
                        .tabItem {
                            Label("설정", systemImage: "gearshape")
                        }
                        .tag(2)
                }
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
