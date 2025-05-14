//
//  ContentView.swift
//  Navigation
//
//  Created by Ali Syed on 2025-05-13.
//

import SwiftUI

struct ContentView: View {
    @State private var path = [Int]()
    
    var body: some View {
        NavigationStack(path: $path) {
            VStack {
                Button("Show 32 then 64") {
                    path = [32, 64]
                }
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
