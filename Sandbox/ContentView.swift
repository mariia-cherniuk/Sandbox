//
//  ContentView.swift
//  Sandbox
//
//  Created by Paul Hudson on 10/07/2020.
//

import MapKit
import SwiftUI

struct ContentView: View {
    
    
    @Environment(\.horizontalSizeClass) var sizeClass
    
    var layout = [
        GridItem(.fixed(100))
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: layout) {
                ForEach(1..<100) { i in
                    RoundedRectangle(cornerRadius: 20, style: .continuous)
                        .fill(Color.random())
                        .frame(height: 200)
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
