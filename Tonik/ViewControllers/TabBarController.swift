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

        
        
        // NOTE: homeview controller
        let home = HomeViewController()
        var homeIcon = UIImage(named: "home")
        homeIcon = homeIcon?.scaled(with: CGFloat(0.25))!.withRenderingMode(.alwaysOriginal)
        home.tabBarItem = UITabBarItem(title: "Home", image: homeIcon, tag: 0)
        let whiteLogo = UIImage(named: "logo-white")?.scaled(with: 0.05)
        let logoView = UIImageView(image: whiteLogo)
        home.navigationItem.titleView = logoView
        
        
        
        
        
        // NOTE: profile view controller
        let profile = ProfileViewController()
        var profileIcon = UIImage(named: "profile")
        profileIcon = profileIcon?.scaled(with: CGFloat(0.25))!.withRenderingMode(.alwaysOriginal)
        profile.view.backgroundColor = .white
        profile.tabBarItem = UITabBarItem(title: "Profile", image: profileIcon, tag: 1)
        profile.title = "profile"
        
        
        // NOTE: settings view controller
        let settings = SettingsViewController()
        var settingsIcon = UIImage(named: "settings")
        // NOTE: sets the icon to a scaled image with the original colors
        settingsIcon = settingsIcon?.scaled(with: CGFloat(0.25))!.withRenderingMode(.alwaysOriginal)
        settings.view.backgroundColor = .white
        settings.tabBarItem = UITabBarItem(title: "Settings", image:settingsIcon, tag: 2)
        settings.title = "Settings"
        // NOTE: set up of the TabBarController and adding the viewControllers
        let controllers = [home, profile, settings]
        // NOTE: maps all the controllers to a UINAvigationController
        viewControllers = controllers.map { UINavigationController(rootViewController: $0)}
        self.selectedIndex = 0
        
        setUpMiniPlayer()
        setNeedsStatusBarAppearanceUpdate()
    }
    
    func setUpMiniPlayer(){
        let miniPlayer = MiniPlayer()
        
        // NOTE: add to parent with constraints
        view.add(subview: miniPlayer) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: (self.tabBar.bounds.size.height) * -1),
            v.heightAnchor.constraint(equalToConstant: 75),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            v.trailingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.trailingAnchor, constant: 0)
            ]}
    }
}
