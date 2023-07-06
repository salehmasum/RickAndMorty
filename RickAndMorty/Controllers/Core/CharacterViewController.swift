//
//  CharacterViewController.swift
//  RickAndMorty
//
//  Created by Saleh Masum on 5/7/2023.
//

import UIKit

/// Controller to show and search for characters
final class CharacterViewController: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        title = "Characters"
        view.backgroundColor = .systemBackground
        
        let request = NetworkRequest(
            endpoint: .character,
            queryParameters: [
                URLQueryItem(name: "name", value: "rick"),
                URLQueryItem(name: "status", value: "alive")
            ]
        )
        
        NetworkService.shared.execute(
            request,
            expecting: Character.self
        ) { result in
                
        }
        
    }

}
