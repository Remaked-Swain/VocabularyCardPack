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
                    
                    TestingView()
                        .tabItem {
                            Label("테스트", systemImage: "questionmark.square")
                        }
                    
                    SettingView()
                        .tabItem {
                            Label("설정", systemImage: "gearshape")
                        }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
