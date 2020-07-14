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
        NavigationView {
            List(0..<100) { i in
                NavigationLink(destination:
                                Text("Destination \(i)")) {
                    Text("Item \(i)")
                }
            }
            .navigationTitle("Menu")
            .listStyle(SidebarListStyle())
            
            Text("Default")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
