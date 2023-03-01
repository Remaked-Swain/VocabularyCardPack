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
                    Label("덱", systemImage: "rectangle.stack")
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "square.stack")
                            .foregroundColor(.black)
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "questionmark.square")
                            .foregroundColor(.black)
                    }
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "gearshape")
                            .foregroundColor(.black)
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
