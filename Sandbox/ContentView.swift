//
//  ContentView.swift
//  Sandbox
//
//  Created by Paul Hudson on 10/07/2020.
//

import MapKit
import SwiftUI

struct ContentView: View {
    
    @State var positon = 0
    
    var body: some View {
        VStack {
            Text("")
            
            ScrollView {
                ForEach(0..<100) { i in
                    LazyVStack {
                        Text(String(i))
                            .onAppear {
                                positon = i
                                print("onAppear \(i)")
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
