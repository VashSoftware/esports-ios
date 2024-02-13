//
//  ContentView.swift
//  Vash Esports
//
//  Created by Stan Runge on 13/02/2024.
//

import Foundation
import SwiftUI

struct ContentView: View {
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }
            
            EventsView()
                .tabItem {
                    Label("Events", systemImage: "calendar")
                }
            
            UserView()
                .tabItem {
                    Label("User", systemImage: "person")
                }
        }
    }
}

#Preview {
    ContentView()
}
