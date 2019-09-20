//
//  TabViewController.swift
//  Tonik
//
//  Created by Wesley Espinoza on 9/11/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit

class TabBarController: UITabBarController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let home = HomeViewController()
        var homeIcon = UIImage(named: "home")
        homeIcon = homeIcon?.scaled(with: CGFloat(0.25))!.withRenderingMode(.alwaysOriginal)
        home.tabBarItem = UITabBarItem(title: "Home", image: homeIcon, tag: 0)
        
        
        
        
        let profile = ProfileViewController()
        var profileIcon = UIImage(named: "profile")
        profileIcon = profileIcon?.scaled(with: CGFloat(0.25))!.withRenderingMode(.alwaysOriginal)
        profile.view.backgroundColor = .white
        profile.tabBarItem = UITabBarItem(title: "Profile", image: profileIcon, tag: 1)
        
        let settings = SettingsViewController()
        var settingsIcon = UIImage(named: "settings")
        settingsIcon = settingsIcon?.scaled(with: CGFloat(0.25))!.withRenderingMode(.alwaysOriginal)
        settings.view.backgroundColor = .white
        settings.tabBarItem = UITabBarItem(title: "Settings", image:settingsIcon, tag: 2)
        
        // NOTE: set up of the TabBarController and adding the viewControllers
        viewControllers = [home, profile, settings]
        self.selectedIndex = 0
        
        setUpMiniPlayer()
    }
    
    func setUpMiniPlayer(){
        let miniPlayer = MiniPlayer()

        
        view.add(subview: miniPlayer) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: (self.tabBar.bounds.size.height) * -1),
            v.heightAnchor.constraint(equalToConstant: 75),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            v.trailingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.trailingAnchor, constant: 0)
            ]}
    }
}
