//
//  MODE.swift
//  26sep
//
//  Created by macbook on 26/09/18.
//  Copyright © 2018 macbook. All rights reserved.
//

import Foundation
struct Resultados : Codable{
    var resultCount: Int
    var result: [Track]
    
}
struct Track: Codable{
    var trackName: String
    var trackPrice: Double
}
let url = URL(string: "https://itunes.apple.com/search?term='metallica'")!

let jsonDecoder = JSONDecoder()



let task = URLSession.shared.dataTask(with: url){ (data, response, error) in
    
    if let datos = data, let resultado = try? jsonDecoder.decode(Resultados.self, from: datos){
        resultado.results.forEach({ (track) in
            print(track.trackName, track.trackPrice)
        })
    }
    task
}
