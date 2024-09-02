//
//  ContentView.swift
//  chat
//
//  Created by Abdal Shah on 27/08/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView(content: {
            CreateAccount()
            Login()
        })
     
    }
}

#Preview {
    ContentView()
}
