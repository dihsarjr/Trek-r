//
//  ContentView.swift
//  Trekr
//
//  Created by Mohammed Rashid on 04/11/23.
//

import SwiftUI

struct ContentView: View {
    let location: Location
    var body: some View {
        ScrollView {
            Image(location.heroPicture)
                .resizable()
                .scaledToFit()
            
            Text(location.name)
                .font(.largeTitle)
                .bold()
                .multilineTextAlignment(.center)
            
            Text(location.country)
                .font(.subheadline)
                .foregroundColor(.secondary)
            Text(location.description)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
            Text("Did you know?")
                .font(.title3)
                .bold()
                .padding(.top)
            Text(location.more)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
        }.navigationTitle("Discover")
        
    }
}

#Preview {
    NavigationView{
        ContentView(location: Location.example)}
}
