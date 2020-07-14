//
//  ContentView.swift
//  Sandbox
//
//  Created by Paul Hudson on 10/07/2020.
//

import MapKit
import SwiftUI

struct PrimaryView: View {
    
    @State private var selection: Int?
    
    var body: some View {
        List(0..<5, selection: $selection) { i in
            NavigationLink(destination:
                            SupplementaryView(id: i)) {
                Text("Item \(i)")
            }
        }
        .navigationTitle("Menu")
        .listStyle(SidebarListStyle())
    }
}

struct SupplementaryView: View {
    
    @State private var selection: Int?
    
    let id: Int
    
    var body: some View {
        List(0..<5, selection: $selection) { i in
            NavigationLink(destination:
                            SecondaryView(group: i, id: id)) {
                Text("Row \(i)")
            }
        }
        .navigationTitle("Menu")
        .listStyle(InsetGroupedListStyle())
    }
}

struct SecondaryView: View {
    
    let group: Int
    let id:  Int
    
    var body: some View {
        Text("Destination \(id) - \(group)")
    }
}

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            PrimaryView()
            SupplementaryView(id: 0)
            SecondaryView(group: 0, id: 0)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
