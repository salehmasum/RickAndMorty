//
//  Episode.swift
//  RickAndMorty
//
//  Created by Saleh Masum on 5/7/2023.
//

import Foundation

struct Episode: Codable {
    let id: Int
    let name: String
    let air_date: String
    let episode: String
    let characters: [String]
    let url: String
    let created: String
}

