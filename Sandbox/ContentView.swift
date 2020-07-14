//
//  ContentView.swift
//  Sandbox
//
//  Created by Paul Hudson on 10/07/2020.
//

import SwiftUI

struct ContentView: View {
    
    @ScaledMetric var frame: CGFloat = 100
    
    var body: some View {
        TabView {
            VStack {
                Text("Hello")
                    .font(.largeTitle)
                
                Image("Spain")
                    .resizable()
                    .aspectRatio(2, contentMode: .fit)
                    .frame(width: frame)
            }
            .tabItem {
                Image(systemName: "star")
                    .resizable()
                Text("Star")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
