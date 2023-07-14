//
//  CharacterDetailViewModel.swift
//  RickAndMorty
//
//  Created by Saleh Masum on 14/7/2023.
//

import Foundation

final class CharacterDetailViewModel {
    
    private let character: Character
    
    init(character: Character) {
        self.character = character
    }
    
    public var title: String {
        return character.name.uppercased()
    }
}
