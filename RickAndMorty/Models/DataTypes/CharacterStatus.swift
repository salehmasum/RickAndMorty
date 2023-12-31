//
//  CharacterStatus.swift
//  RickAndMorty
//
//  Created by Saleh Masum on 6/7/2023.
//

import Foundation

enum CharacterStatus: String, Codable {
    //'Alive', 'Dead' or 'unknown'
    case alive = "Alive"
    case dead = "Dead"
    case `unknown` = "unknown"
    
    var text: String {
        switch self {
        case .alive, .dead:
           return rawValue
        case .unknown:
            return "Unknown"
        }
    }
}
