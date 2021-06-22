//
//  WorldView.swift
//  Trekr
//
//  Created by Jordi Rivera Lizarralde on 20/6/21.
//

import MapKit
import SwiftUI

struct WorldView: View {
    // Property wrapper to add locations to the environment
    @EnvironmentObject var locations: Locations
    
    // Create a starting region in the map, which will be modified over time
    // @State is a property wrapper. This tells SwiftUI that this is Live Program state
    @State var region = MKCoordinateRegion (
        center:CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275),
        span: MKCoordinateSpan(latitudeDelta: 40, longitudeDelta: 40)
    )
    var body: some View {
        // $ notation makes region 2 way binding.
        // 1 way binding: Read this value but don't write it. Or, write this value but don't read it
        // 2 way binding: Read this value to start with, but if we make changes to it, also update the value to reflect those changes
        // Loop over all locations
        Map(coordinateRegion: $region,
            annotationItems: locations.places) {
            // Get value of each location in places
            location in
            // Data type to draw things on the screen
            MapAnnotation(coordinate: CLLocationCoordinate2D(latitude:
                location.latitude, longitude:
                location.longitude)){
                
                // Create link on flag
                NavigationLink(destination:
                    ContentView(location: location)) {
                
                    Image(location.country)
                        .resizable()
                        // Round corners of image
                        .cornerRadius(10)
                        .frame(width: 80, height: 40)
                        .shadow(radius: 3)
                }
            }
        }
        .navigationTitle("Locations")
    }
}

struct WorldView_Previews: PreviewProvider {
    static var previews: some View {
        WorldView()
    }
}
