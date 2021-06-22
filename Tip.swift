//
//  Tip.swift
//  Trekr
//
//  Created by Jordi Rivera Lizarralde on 22/6/21.
//

import Foundation

struct Tip: Decodable {
    let text: String
    // We use ? to let Swift know that the info must be there or not
    let children: [Tip]?
}
