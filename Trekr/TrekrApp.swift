//
//  TrekrApp.swift
//  Trekr
//
//  Created by Mohammed Rashid on 04/11/23.
//

import SwiftUI

@main
struct TrekrApp: App {
    @StateObject var locations = Locations()
    
    var body: some Scene {
        WindowGroup {
            TabView{
                NavigationView{
                    ContentView(location: Location.example)
                }.tabItem { 
                    Image(systemName: "airplane.circle.fill")
                        .padding(.top)
                    Text("Discovery")
                }
                
                NavigationView{
                    WorldView()
                }.tabItem { 
                    Image(systemName: "star.fill")
                        .padding(.top)
                    Text("Locations")
                }           
                NavigationView{
                    TipsView()
                }.tabItem {
                    Image(systemName: "quote.bubble")
                        .padding(.top)
                    Text("Tips")
                }
            }.environmentObject(locations)
        }
    }
}
