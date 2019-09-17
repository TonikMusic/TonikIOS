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
    let loginSignupView = LoginSignUpView()
    let logoView = LogoView()
    let dontHaveAccountlable = Label.customLabel(title: "Don't have an account?", textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), textSize: 16)
    let loginSignupBtn = Button.customButton(title: "Sign Up", titleColor: #colorLiteral(red: 0.3921568627, green: 0.01960784314, blue: 0.5607843137, alpha: 1), cornerRadius: 0, backgroundColor: .clear)
    var isFinished = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setUpLogin()
        loginSignupBtn.addTarget(self, action: #selector(didPressAccountBtn), for: .touchUpInside)
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        
        print("signup frame = \(loginSignupView.frame)")
    }
    
    
    func setUpLogin() {
        // NOTE: Instantiating components
        
        let viewHeight = view.frame.height
        let viewWidth = view.frame.width
        
        
        // NOTE: Adding constraints
        view.add(subview: loginSignupView) { (v, p) in [
//            v.centerYAnchor.constraint(equalTo: p.centerYAnchor, constant: 70.0),
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: -150),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 25),
            v.trailingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.trailingAnchor, constant: -25),
            v.heightAnchor.constraint(equalToConstant: viewHeight/3 + 10)
            ]}
    
        
//        view.add(subview: logoView) { (v, p) in [
//            v.centerYAnchor.constraint(equalTo: loginSignupView.safeAreaLayoutGuide.topAnchor, constant: -45),
//            v.leadingAnchor.constraint(equalTo: loginSignupView.safeAreaLayoutGuide.leadingAnchor, constant: 10),
//            v.trailingAnchor.constraint(equalTo: loginSignupView.safeAreaLayoutGuide.trailingAnchor, constant: -10),
//            v.heightAnchor.constraint(equalToConstant: 100)
//            ]}
//
        view.add(subview: dontHaveAccountlable) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            v.leadingAnchor.constraint(equalTo: loginSignupView.leadingAnchor, constant: viewWidth/45),
            v.heightAnchor.constraint(equalToConstant: 15)
            ]}
        
        view.add(subview: loginSignupBtn) { (v, p) in [
            v.centerYAnchor.constraint(equalTo: dontHaveAccountlable.centerYAnchor, constant: 0),
            v.trailingAnchor.constraint(equalTo: loginSignupView.trailingAnchor, constant: -15),
            v.widthAnchor.constraint(equalToConstant: 60),
            v.heightAnchor.constraint(equalToConstant: 20)
            ]}
        
        
    }
    
    @objc func didPressAccountBtn() {
        
        if loginSignupBtn.currentTitle == "Log In" {
            
            self.loginSignupView.loginSignUpBtn.setTitle("Log In", for: .normal)
            self.loginSignupView.setNeedsLayout()
            UIView.animate(withDuration: 1.0, delay: 0.05, options: .curveEaseInOut, animations: {
                self.loginSignupBtn.setTitle("Sign Up", for: .normal)
                self.loginSignupView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -250)
                self.loginSignupView.layoutIfNeeded()
                self.dontHaveAccountlable.text = "Don't have an account?"
//                self.loginSignupView.translatesAutoresizingMaskIntoConstraints = false
                self.loginSignupView.frame = CGRect(x: 25.0, y: 347.33333333333326, width: 325, height: self.view.frame.height/3 + 30)
//                self.loginSignupView.signUpBtn.frame = CGRect(x: 25.0, y: 347.0 - 50, width: 285.0, height: 58.0)
                
            }) { (true) in
                
                UIView.animate(withDuration: 0.1, animations: {
//                    self.loginSignupView.userName.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1)])
//                    self.loginSignupView.confirmPassword.attributedPlaceholder = NSAttributedString(string: "", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1)])
//                    self.loginSignupView.userName.frame = CGRect(x: 20.0, y: 121.99999999999997, width: 285.0, height: 30.0)
//                    self.loginSignupView.lineView1.frame = CGRect(x: 20.0, y: 151.99999999999997, width: 285.0, height: 2.0)
//                    self.loginSignupView.confirmPassword.frame = CGRect(x: 20.0, y: 173.99999999999997, width: 285.0, height: 30.0)
//                    self.loginSignupView.lineView4.frame = CGRect(x: 20.0, y: 203.99999999999997, width: 285.0, height: 2.0)
//                    self.loginSignupView.layoutIfNeeded()
                })
                
                print("pressed log in button thats why i changed title")
            }
        } else {
            
            self.loginSignupView.loginSignUpBtn.setTitle("Sign Up", for: .normal)
            
            self.loginSignupView.setNeedsLayout()
            UIView.animate(withDuration: 1.0, delay: 0.05, options: .curveEaseInOut, animations: {
                self.loginSignupView.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -250)
                self.loginSignupView.layoutIfNeeded()
                self.loginSignupBtn.setTitle("Log In", for: .normal)
                
                self.dontHaveAccountlable.text = "Already have an account?"
                self.loginSignupView.frame = CGRect(x: 25.0, y: 200, width: 325.0, height: self.view.frame.height/2 - 20)
                self.loginSignupView.translatesAutoresizingMaskIntoConstraints = true
            }) { (true) in
                UIView.animate(withDuration: 0.1, animations: {
//                    self.loginSignupView.userName.attributedPlaceholder = NSAttributedString(string: "Username", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1)])
//                    self.loginSignupView.confirmPassword.attributedPlaceholder = NSAttributedString(string: "Confrim Password", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1)])
//                    self.loginSignupView.userName.frame = CGRect(x: 20.0, y: 69.99999999999997, width: 285.0, height: 30.0)
//                    self.loginSignupView.lineView1.frame = CGRect(x: 20.0, y: 99.99999999999997, width: 285.0, height: 2.0)
//                    self.loginSignupView.confirmPassword.frame = CGRect(x: 20.0, y: 225.99999999999997, width: 285.0, height: 300)
//                    self.loginSignupView.lineView4.frame = CGRect(x: 20.0, y: 256.0, width: 285.0, height: 2.0)
//                    self.loginSignupView.layoutIfNeeded()
                })
                print("pressed sign up button thats why i changed title")
            }
        }
        
    }
}
