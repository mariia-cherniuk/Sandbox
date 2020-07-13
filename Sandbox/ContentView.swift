//
//  ContentView.swift
//  Sandbox
//
//  Created by Paul Hudson on 10/07/2020.
//

import MapKit
import SwiftUI

struct SampleRow: View {
    let id: Int
    
    init(id: Int) {
        self.id = id
        print("Row \(id)")
        
    }
    var body: some View {
        Text("\(id)")
    }
}

struct ContentView: View {
    
    let coutries = Bundle.main.decode([String].self, from: "countries.json")
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(1...1000, id: \.self, content: SampleRow.init)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

