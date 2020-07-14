//
//  ContentView.swift
//  Sandbox
//
//  Created by Paul Hudson on 10/07/2020.
//

import MapKit
import SwiftUI

struct Person: Identifiable {
    
    let id = UUID()
    
    var name: String
    var children: [Person]?
}

struct ContentView: View {
    
    var people: [Person] {
        let masha = Person(name: "masha")
        let andrey = Person(name: "andrey")
        let kiril = Person(name: "kiril")
        let helen = Person(name: "helen", children: [kiril])
        let mom = Person(name: "zina", children: [helen, masha, andrey])
        return [mom, helen, masha]
    }
    
    var body: some View {
        List(people, children: \.children) { person in
            Image(systemName: "person.circle")
            Text(person.name)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
