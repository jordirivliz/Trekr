//
//  ContentView.swift
//  Trekr
//
//  Created by Jordi Rivera Lizarralde on 16/6/21.
//

import SwiftUI

struct ContentView: View {
    // Create a property location
    let location : Location
    
    var body: some View {
        // Add Image
        // Vertical Stack: VStack {
        // Allow the user to Scroll in the screen
        ScrollView {
            Image(location.heroPicture)
            // Modifiers, you put them on the next line
                // Let us strecth the image
                .resizable()
                .scaledToFit()
                
            // Add Text
            Text(location.name)
                // Change font
                .font(.largeTitle)
                .bold()
                // Control alignment of text
                .multilineTextAlignment(.center)
                
            Text(location.country)
                    .font(.title)
                    .foregroundColor(.secondary)
                
            Text(location.description)
                // Add space between the edges and the text
                .padding(.horizontal)
                
            Text("Did you know?")
                    .font(.title3)
                    .bold()
                    // Add space at the top
                    .padding(.top)
            
            Text(location.more)
                // Add space between the edges and the text
                .padding(.horizontal)

        }
        // Add Title to ScrollView
        .navigationTitle("Discover")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(location: Location.example)
    }
}
