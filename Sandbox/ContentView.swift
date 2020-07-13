//
//  ContentView.swift
//  Sandbox
//
//  Created by Paul Hudson on 10/07/2020.
//

import MapKit
import SwiftUI

struct ContentView: View {
    
    var layout = [
        GridItem(.adaptive(minimum: 100))
    ]
    
    var body: some View {
        ScrollView {
            ForEach(0..<5) { i in
                ScrollView(.horizontal) {
                    LazyHGrid(rows: layout) {
                        ForEach(0..<100) { i in
                            RoundedRectangle(cornerRadius: 20, style: .continuous)
                                .fill(Color.random())
                                .frame(width: 100, height: 100)
                        }
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
