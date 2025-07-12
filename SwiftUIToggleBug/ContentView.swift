//
//  ContentView.swift
//  SwiftUIToggleBug
//
//  Created by Guillaume Leclerc on 12/07/2025.
//

import SwiftUI

enum ToggleVisibility {
    
    case show
    case hide
    
}

struct ContentView: View {
    @AppStorage("userHasSuperPowers") private var userHasSuperPowers: Bool = false
    @State private var toggleVisibility: ToggleVisibility = .hide
    
    var body: some View {
        VStack {
            Picker("", selection: $toggleVisibility) {
                Text("hide the toggle").tag(ToggleVisibility.hide)
                Text("show the toggle").tag(ToggleVisibility.show)
            }
            
            if toggleVisibility == .show {
                Toggle("user has super powers", isOn: $userHasSuperPowers)
                // uncomment the line below to make it work
//                    .onChange(of: userHasSuperPowers) { _ in }
            }
        }
        .padding()
        .frame(width: 300, height: 200)
                
    }
}

#Preview {
    ContentView()
}
