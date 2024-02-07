//
//  Vash_EsportsApp.swift
//  Vash Esports
//
//  Created by Stan Runge on 07/02/2024.
//

import SwiftUI
import Supabase

@main
struct Vash_EsportsApp: App {
    init() {
        let client = SupabaseClient(supabaseURL: URL(string: "https://mdixwlzweijevgjmcsmt.supabase.co")!, supabaseKey: "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im1kaXh3bHp3ZWlqZXZnam1jc210Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTIwMzQyNDcsImV4cCI6MjAwNzYxMDI0N30.a8SWatAgGUn8MDCSVcjEdNhlEJum177aIVQnxVZaY8w")
    }
    
    var body: some Scene {
        WindowGroup {
            HomeView()
        }
    }
}
