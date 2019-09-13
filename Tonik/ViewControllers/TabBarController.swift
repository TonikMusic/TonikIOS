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
        
        setUpMiniPlayer()
    }
    
    func setUpMiniPlayer(){
        let miniPlayer = MiniPlayer()
        
        view.add(subview: miniPlayer) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: (self.tabBar.bounds.size.height) * -1),
            v.heightAnchor.constraint(equalToConstant: 50),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            v.trailingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.trailingAnchor, constant: 0)
            ]}
    }
}
