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
            
            ]}
    }
}
