//
//  WorldView.swift
//  Trekr
//
//  Created by Mohammed Rashid on 05/11/23.
//
import MapKit
import SwiftUI

struct WorldView: View {
    @EnvironmentObject var locations: Locations
    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 11.1085249, longitude: 76.2696252), span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40))
    var cameraPosition: MapCameraPosition {
    MapCameraPosition.region(region)
    }
    var body: some View {
        Map(coordinateRegion: $region,
            annotationItems:locations.places) {location in
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude), content: {
                NavigationLink(destination: ContentView(location: location)){
                    Image(location.country)
                        .resizable()
                        .cornerRadius(10)
                        .frame(width: 80,height: 40)
                    .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)}
            })
        }
            .navigationTitle("Locations")
    }
}

#Preview {
    WorldView()
}
