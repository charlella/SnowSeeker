//
//  ContentView.swift
//  SnowSeeker
//
//  Created by charlene hoareau on 23/04/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationSplitView(preferredCompactColumn: .constant(.detail)) {
            NavigationLink("Primary") {
                Text("New view")
            }
        } detail: {
            Text("Content")
                .navigationTitle("Content View")
        }
        .navigationSplitViewStyle(.balanced)    }
}

#Preview {
    ContentView()
}
