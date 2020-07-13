//
//  ContentView.swift
//  Sandbox
//
//  Created by Paul Hudson on 10/07/2020.
//

import MapKit
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        ScrollView {
            TabView {
                ForEach(1..<6) { i in
                    GeometryReader { geo in
                        Image("photo\(i)")
                            .resizable()
                            .scaledToFit()
                            .frame(width: geo.size.width, height: 250)
                            .clipped()
                    }
                }
            }
            .frame(height: 300)
            .tabViewStyle(PageTabViewStyle())
            .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
