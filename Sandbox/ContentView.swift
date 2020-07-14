//
//  ContentView.swift
//  Sandbox
//
//  Created by Paul Hudson on 10/07/2020.
//

import SwiftUI

struct ContentView: View {
    
    @State private var names = ["Masha", "Andrey", "Tom", "Helen"]
    @State private var isVertical = false
    @Namespace var animation
    
    var body: some View {
        if isVertical {
            VStack(spacing: 20) {
                ForEach(names, id: \.self) { name in
                    Text(name)
                        .padding()
                        .background(Color.pink)
                        .matchedGeometryEffect(id: name, in: animation)
                }
            }
            .transition(.none)
            .onTapGesture {
                withAnimation {
                    isVertical.toggle()
                }
            }
        } else {
            HStack(spacing: 20) {
                ForEach(names, id: \.self) { name in
                    Text(name)
                        .padding()
                        .background(Color.pink)
                        .matchedGeometryEffect(id: name, in: animation)
                }
            }
            .transition(.none)
            .onTapGesture {
                withAnimation {
                    isVertical.toggle()
                }
            }
        }
    }
}

// MARK: - Fix issue with fade in/out transition -> .transition(.none)
extension AnyTransition {
    struct NoneModifier: ViewModifier {
        func body(content: Content) -> some View {
            content
        }
    }
    
    static var none: AnyTransition {
        AnyTransition.modifier(active: NoneModifier(),
                               identity: NoneModifier())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environment(\.sizeCategory, .accessibilityExtraExtraLarge)
    }
}
