//
//  ContentView.swift
//  Sandbox
//
//  Created by Paul Hudson on 10/07/2020.
//

import SwiftUI

struct ContentView: View {
    
    @ScaledMetric var frame: CGFloat = 100
    
    var body: some View {
        VStack {
            Text("Hello")
                .font(.largeTitle)
            
            Image("Spain")
                .resizable()
                .aspectRatio(2, contentMode: .fit)
                .frame(width: max(90, min(frame, 120)))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
