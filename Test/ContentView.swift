//
//  ContentView.swift
//  Test
//
//  Created by Uddeshya Singh on 05/02/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext) private var modelContext
    @Query private var items: [Item]

    var body: some View {
        ZStack {
            
        }
        .frame(maxWidth: 500, maxHeight: 500)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
