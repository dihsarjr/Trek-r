//
//  Locations.swift
//  Trekr
//
//  Created by Mohammed Rashid on 05/11/23.
//

import Foundation

class Locations: ObservableObject {
    let places: [Location]
    
    init() {
        let url = Bundle.main.url(forResource: "locations", withExtension: "json")!
        
        let data = try! Data(contentsOf: url)
        places = try! JSONDecoder().decode([Location].self, from: data)
    }
}
