//
//  GetAllCharacterResponse.swift
//  RickAndMorty
//
//  Created by Saleh Masum on 7/7/2023.
//

import Foundation

struct GetAllCharacterResponse: Codable {
    let info: GetAllCharacterResponseInfo
    let results: [Character]
}

struct GetAllCharacterResponseInfo: Codable {
    let count: Int
    let pages: Int
    let next: String?
    let prev: String?
}


