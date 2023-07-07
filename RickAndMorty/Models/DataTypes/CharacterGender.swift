//
//  CharacterGender.swift
//  RickAndMorty
//
//  Created by Saleh Masum on 6/7/2023.
//

import Foundation

enum CharacterGender: String, Codable{
    //'Female', 'Male', 'Genderless' or 'unknown'
    case male = "Male"
    case female = "Female"
    case genderless = "Genderless"
    case unknown = "unknown"
}
