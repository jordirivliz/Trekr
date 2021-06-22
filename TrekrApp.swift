//
//  TrekrApp.swift
//  Trekr
//
//  Created by Jordi Rivera Lizarralde on 16/6/21.
//

import SwiftUI

@main
struct TrekrApp: App {
    // Same as @State but this is for classes
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            // Add tab bar across the bottom
            TabView {
                // Add NavigationView so that the text does not overlap with date, time...
                NavigationView {
                    ContentView(location: locations.primary)
                }
                .tabItem {
                    Image(systemName: "airplane.circle.fill")
                    Text("Discover")
                }
                
                NavigationView {
                    WorldView()
                }
                .tabItem {
                    Image(systemName: "star.fill")
                    Text("Locations")
                }
                NavigationView {
                    TipsView()
                }
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Tips")
                }
            }
            // Modifier to post object to environment.
            .environmentObject(locations)
        }
    }
}
