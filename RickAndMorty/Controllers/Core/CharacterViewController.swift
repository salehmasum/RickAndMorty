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
        
        callCharacterListApi()
    }
    
    private func callCharacterListApi() {
        NetworkService.shared.execute(
            .characterListRequest,
            expecting: GetAllCharacterResponse.self
        ) { result in
            switch result {
            case .success(let model):
                print("Total: "+String(model.info.pages))
                print("Total: "+String(model.results.count))
            case .failure(let error):
                print(String(describing: error))
            }
        }
    }
    

}
