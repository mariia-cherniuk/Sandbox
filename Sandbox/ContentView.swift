//
//  ContentView.swift
//  Sandbox
//
//  Created by Paul Hudson on 10/07/2020.
//

import SwiftUI

struct ContentView: View {

    @State private var text = ""
    
    var body: some View {
        NavigationView {
            TextEditor(text: $text)
                .foregroundColor(.red)
                .background(Color.blue) //doesn't work
                .font(.body)
                .lineSpacing(5)
                .navigationTitle("TextEditor")
        }
        .onAppear {
            //how to fix .background(Color.blue) 
            UITextView.appearance().backgroundColor = .clear
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
