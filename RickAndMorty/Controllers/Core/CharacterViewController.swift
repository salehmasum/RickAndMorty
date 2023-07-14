//
//  CharacterViewController.swift
//  RickAndMorty
//
//  Created by Saleh Masum on 5/7/2023.
//

import UIKit

/// Controller to show and search for characters
final class CharacterViewController: UIViewController, CharacterListViewDelegate {
    
    private let characterListView = CharacterListView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Characters"
        view.backgroundColor = .systemBackground
        
        setupView()
    }
    
    private func setupView() {
        characterListView.delegate = self
        view.addSubview(characterListView)
        NSLayoutConstraint.activate([
            characterListView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            characterListView.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor),
            characterListView.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor),
            characterListView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor)
        ])
    }
    
    //MARK: - CharacterListViewDelegate
    func characterListView(_ characterListView: CharacterListView, didSelectCharacter character: Character) {
        //Open detail controller for this character
        let detailVc = CharacterDetailViewController(viewModel: CharacterDetailViewModel(character: character))
        detailVc.navigationItem.largeTitleDisplayMode = .never
        navigationController?.pushViewController(detailVc, animated: true)
    }
    
}
