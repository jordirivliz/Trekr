//
//  Locations.swift
//  Trekr
//
//  Created by Jordi Rivera Lizarralde on 20/6/21.
//

import Foundation
// Create a class to handle all Locations
class Locations: ObservableObject {
    // Create an array to hold all locations
    let places : [Location]
    
    var primary: Location {
        places[0]
    }
    
    init() {
        // Find location of the file "locations" in our IOS system
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        // Upload file to our code
        let data = try! Data(contentsOf: url)
        
        // Convert data to array of locations
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
