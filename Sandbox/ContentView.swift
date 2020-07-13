//
//  ContentView.swift
//  Sandbox
//
//  Created by Paul Hudson on 10/07/2020.
//

import MapKit
import SwiftUI

struct ContentView: View {

    let coutries = Bundle.main.decode([String].self, from: "countries.json")
    
    var body: some View {
        ScrollView {
            LazyVStack(alignment: .leading) {
                ForEach(coutries, id: \.self) { country in
                    HStack {
                        Image(country)
                            .resizable()
                            .frame(width: 120, height: 60)
                        
                        Text(country)
                            .font(.title)
                    }
                    
                }
            }
        }
        .background(Color.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

