//
//  mode.swift
//  26sep
//
//  Created by macbook on 26/09/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import Foundation
struct Resultados : Codable{
    var resultCount: Int
    var results: [Track]
}

struct Track: Codable{
    var trackName: String
    var trackPrice: Double
    var artworkUrl100: String
}
