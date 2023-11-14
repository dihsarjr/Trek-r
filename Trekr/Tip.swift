//
//  Tips.swift
//  Trekr
//
//  Created by Mohammed Rashid on 05/11/23.
//

import Foundation

struct Tip: Decodable{
    let text: String
    let children: [Tip]?
}
