//
//  ViewController.swift
//  RickAndMorty
//
//  Created by Saleh Masum on 5/7/2023.
//

import UIKit

/// Controller to house tabs and root view controllers
final class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupTabs()
    }
    
    private func setupTabs() {
        let characterVc = CharacterViewController()
        let locationVc = LocationViewController()
        let episodeVc = EpisodeViewController()
        let settingsVc = SettingsViewController()
        
        characterVc.navigationItem.largeTitleDisplayMode = .automatic
        locationVc.navigationItem.largeTitleDisplayMode = .automatic
        episodeVc.navigationItem.largeTitleDisplayMode = .automatic
        settingsVc.navigationItem.largeTitleDisplayMode = .automatic
        
        let nav1 = UINavigationController(rootViewController: characterVc)
        let nav2 = UINavigationController(rootViewController: locationVc)
        let nav3 = UINavigationController(rootViewController: episodeVc)
        let nav4 = UINavigationController(rootViewController: settingsVc)
        
        nav1.tabBarItem = UITabBarItem(title: "Character", image: UIImage(systemName: "person"), tag: 1)
        nav2.tabBarItem = UITabBarItem(title: "Locations", image: UIImage(systemName: "globe"), tag: 2)
        nav3.tabBarItem = UITabBarItem(title: "Episodes", image: UIImage(systemName: "tv"), tag: 3)
        nav4.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName: "gear"), tag: 4)
        
        
        for nav in [nav1, nav2, nav3, nav4] {
            nav.navigationBar.prefersLargeTitles = true
        }
        
        setViewControllers(
                    [nav1, nav2, nav3, nav4],
                    animated:true
        )
    }
    
}

 
