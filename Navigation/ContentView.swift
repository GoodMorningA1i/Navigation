//
//  ContentView.swift
//  Navigation
//
//  Created by Ali Syed on 2025-05-13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List(0..<1000) { i in
                NavigationLink("Select \(i)", value: i)
            }
            .navigationDestination(for: Int.self) { selection in
                Text("You have selected: \(selection)")
            }
        }
    }
}



#Preview {
    ContentView()
}
