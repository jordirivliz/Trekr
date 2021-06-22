//
//  TipsView.swift
//  Trekr
//
//  Created by Jordi Rivera Lizarralde on 22/6/21.
//

import SwiftUI

struct TipsView: View {
    let tips: [Tip]
    
    init() {
        // Find location of the file "locations" in our IOS system
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        
        // Upload file to our code
        let data = try! Data(contentsOf: url)
        
        // Convert data to array of locations
        tips = try! JSONDecoder().decode([Tip].self, from: data)
    }
    
    var body: some View {
        // Read the text property from tip and use that as unique identifier.
        // Create list of tips
        List(tips, id: \.text, children: \.children) { tip in
            // Check to see if Tip has children
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
                    .font(.headline)
            }else {
                Text(tip.text)
            }
        }
        .navigationTitle("Tips")
    }
}

struct TipsView_Previews: PreviewProvider {
    static var previews: some View {
        TipsView()
    }
}
