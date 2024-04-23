//
//  ContentView.swift
//  SnowSeeker
//
//  Created by charlene hoareau on 23/04/2024.
//

import SwiftUI

struct User: Identifiable {
    var id = "Taylor Swift"
}

struct ContentView: View {
    @State private var selectedUser: User? = nil
    @State private var isShowingUser = false

    var body: some View {
        NavigationSplitView(preferredCompactColumn: .constant(.detail)) {
            NavigationLink("Primary") {
                Text("New view")
            }
        } detail: {
            Button("Tap Me") {
                selectedUser = User()
                isShowingUser = true

            }
            .sheet(item: $selectedUser) { user in
                Text(user.id)
            }
            
        }
        .navigationSplitViewStyle(.balanced)    }
}

#Preview {
    ContentView()
}
