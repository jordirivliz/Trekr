//
//  Location.swift
//  Trekr
//
//  Created by Jordi Rivera Lizarralde on 20/6/21.
//

import Foundation

// Create a struct for every location in the data
struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    
    // static makes this variable exist only once and be shared by all locations
    static let example = Location(id: 1, name: "Great Smokey Mountains ", country: "United States", description: "A great place to visit", more: "More text here", latitude: 35.6532, longitude: -83.5070, heroPicture: "smokies", advisory: "Beware of the bears!")
}
