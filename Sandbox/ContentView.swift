//
//  ContentView.swift
//  Sandbox
//
//  Created by Paul Hudson on 10/07/2020.
//

import MapKit
import SwiftUI

struct ContentView: View {
    
    @State private var disclosureShowing = false
    
    var body: some View {
        VStack {
            DisclosureGroup("title", isExpanded: $disclosureShowing) {
                Text("body body body body body")
            }
            .contentShape(Rectangle())
            .onTapGesture {
                withAnimation {
                    disclosureShowing.toggle()
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
