//
//  ContentView.swift
//  Sandbox
//
//  Created by Paul Hudson on 10/07/2020.
//

import MapKit
import SwiftUI

struct ContentView: View {
    
    @State private var tapCount = 0
    
    var body: some View {
        if tapCount == 0 {
            Text("0")
        } else {
            Text("\(tapCount)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

