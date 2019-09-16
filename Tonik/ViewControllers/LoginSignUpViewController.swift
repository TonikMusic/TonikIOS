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
        let logo = LogoView()
        let signupView = SignUpView()
        
        // NOTE: Adding constraints
        view.add(subview: signupView) { (v, p) in [
            v.topAnchor.constraint(equalTo: p.safeAreaLayoutGuide.topAnchor, constant: viewHeight/5 + 10),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            v.trailingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.trailingAnchor, constant: -25),
            v.heightAnchor.constraint(equalToConstant: viewHeight/2 + 30)
            ]}
        
//        view.add(subview: logo) { (v, p) in [
//            v.centerYAnchor.constraint(equalTo: signupView.topAnchor, constant: -100),
//            v.centerXAnchor.constraint(equalTo: signupView.centerXAnchor, constant: -20),
//            v.leadingAnchor.constraint(equalTo: signupView.leadingAnchor, constant: 0),
//            v.trailingAnchor.constraint(equalTo: signupView.trailingAnchor, constant: 0),
//            v.heightAnchor.constraint(equalToConstant: 250)
//            ]}
    }
    
}
