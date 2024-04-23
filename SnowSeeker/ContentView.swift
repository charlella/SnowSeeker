//
//  ContentView.swift
//  SnowSeeker
//
//  Created by charlene hoareau on 23/04/2024.
//

import SwiftUI

struct ContentView: View {
    @State private var searchText = ""
    let allNames = ["Alex", "Beatice", "Carla", "Dylan"]

    var filteredNames: [String] {
        if searchText.isEmpty {
            allNames
        } else {
            allNames.filter { $0.localizedStandardContains(searchText) }
        }
    }

    var body: some View {
        NavigationStack {
            List(filteredNames, id: \.self) { name in
                Text(name)
            }
            .searchable(text: $searchText, prompt: "Look for something")
            .navigationTitle("Searching")
        }
    }
}

#Preview {
    ContentView()
}
