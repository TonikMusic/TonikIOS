//
//  LoginSignupViewController.swift
//  Tonik
//
//  Created by Student Loaner 3 on 9/13/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit


class LoginSignupViewController: UIViewController {
    
    // NOTE: Instatiating views
    let signupView = SignUpView()
    let logoView = LogoView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setUpLogin()
    }
    
    
    func setUpLogin() {
        // NOTE: Instantiating components
        
        let viewHeight = view.frame.height
        let viewWidth = view.frame.width
        
        
        // NOTE: Adding constraints
        view.add(subview: signupView) { (v, p) in [
            v.topAnchor.constraint(equalTo: p.safeAreaLayoutGuide.topAnchor, constant: viewHeight/5 + 10),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            v.trailingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.trailingAnchor, constant: -25),
            v.heightAnchor.constraint(equalToConstant: viewHeight/2 - 30)
            ]}
        
        view.add(subview: logoView) { (v, p) in [
            v.centerYAnchor.constraint(equalTo: signupView.safeAreaLayoutGuide.topAnchor, constant: -45),
            v.leadingAnchor.constraint(equalTo: signupView.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            v.trailingAnchor.constraint(equalTo: signupView.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            v.heightAnchor.constraint(equalToConstant: 100)
            ]}
    }
    
    
    
}
