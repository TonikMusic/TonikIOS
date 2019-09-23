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
    var loginSignupView = LoginSignUpView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    var logoView = LogoView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
    let dontHaveAccountlable = Label.customLabel(title: "Don't have an account?", textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), textSize: 16)
    let loginSignupBtn = Button.customButton(title: "Sign Up", titleColor: #colorLiteral(red: 0.3921568627, green: 0.01960784314, blue: 0.5607843137, alpha: 1), cornerRadius: 0, backgroundColor: .clear)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setUpLogin()
        loginSignupBtn.addTarget(self, action: #selector(didPressAccountBtn), for: .touchUpInside)
//        updateViewToUseKeyBorad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(true)
        print("signup button frame = \(loginSignupView.email.frame)")
        print("signup button frame = \(loginSignupView.password.frame)")
    }
    
    
    // NOTE: after user tapped sign up button, updated frames for animation
//    username frame = (20.0, 89.99999999999997, 285.0, 30.0)
//    line frame = (20.0, 119.99999999999997, 285.0, 2.0)
//    email frame = (20.0, 141.99999999999997, 285.0, 30.0)
//    line frame = (20.0, 171.99999999999997, 285.0, 2.0)
//    password frame = (20.0, 193.99999999999997, 285.0, 30.0)
//    line frame = (20.0, 223.99999999999997, 285.0, 2.0)
//    confirm password frame = (20.0, 246.0, 285.0, 30.0)
//    line frame = (20.0, 276.0, 285.0, 2.0)
//    signup button frame = (20.0, 251.66666666666669, 285.0, 58.0)
//    signup button frame = (20.0, 357.0, 285.0, 58.0)

    
    func setUpLogin() {
        // NOTE: Instantiating components
        let viewHeight = view.frame.height
        let viewWidth = view.frame.width
        
        // NOTE: Setting frames
        loginSignupView = LoginSignUpView(frame: CGRect(x: 25.0, y: 347.33333333333326, width: 325.0, height: viewHeight/3 + 10))
        logoView = LogoView(frame: CGRect(x: 35.0, y: 252.33333333333337, width: 305.0, height: 100.0))
        
//        loginSignupView = LoginSignUpView(frame: CGRect(x: 25.0, y: 247.33333333333326, width: 325.0, height: viewHeight/2 - 20))
//        logoView = LogoView(frame: CGRect(x: 35.0, y: 152.33333333333337, width: 305.0, height: 100.0))
        view.addSubview(loginSignupView)
        view.addSubview(logoView)
        
        // NOTE: Adding constraints
        view.add(subview: dontHaveAccountlable) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            v.leadingAnchor.constraint(equalTo: loginSignupView.leadingAnchor, constant: viewWidth/45),
            v.heightAnchor.constraint(equalToConstant: 20)
            ]}

        view.add(subview: loginSignupBtn) { (v, p) in [
            v.centerYAnchor.constraint(equalTo: dontHaveAccountlable.centerYAnchor, constant: 0),
            v.trailingAnchor.constraint(equalTo: loginSignupView.trailingAnchor, constant: -15),
            v.widthAnchor.constraint(equalToConstant: 60),
            v.heightAnchor.constraint(equalToConstant: 20)
            ]}
        
        
    }
    
    @objc func didPressAccountBtn() {
        
        addAnimationToViews()

    }
    
    
    
    //NOTE: Updates super view visibility when keyboard is called
    func updateViewToUseKeyBorad() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardDidHideNotification, object: nil)
        hideKeyboardTapped()
    }
    
    
    func addAnimationToViews() {
        if loginSignupBtn.currentTitle == "Sign Up" {
            
            self.loginSignupView.loginSignUpBtn.setTitle("Sign Up", for: .normal)
            self.loginSignupView.updateConstraints()
            UIView.animate(withDuration: 1.0, delay: 0.05, options: .curveEaseInOut, animations: {
                self.loginSignupBtn.setTitle("Log In", for: .normal)
                self.dontHaveAccountlable.text = "Already have an account?"
                
                self.loginSignupView.layoutIfNeeded()
                
                self.loginSignupView.frame = CGRect(x: 25.0, y: 250, width: 325.0, height: self.view.frame.height/2 - 20)
                self.logoView.frame = CGRect(x: 35.0, y: 152.33333333333337, width: 305.0, height: 100.0)
                self.loginSignupView.loginSignUpBtn.translatesAutoresizingMaskIntoConstraints = true
                self.loginSignupView.loginSignUpBtn.frame = CGRect(x: 20.0, y: 357.0, width: 285.0, height: 58.0)
                
                self.loginSignupView.userName.translatesAutoresizingMaskIntoConstraints = true
                self.loginSignupView.userName.frame = CGRect(x: 20.0, y: 89.99999999999997, width: 285.0, height: 30.0)
                self.loginSignupView.lineView1.translatesAutoresizingMaskIntoConstraints = true
                self.loginSignupView.lineView1.frame = CGRect(x: 20.0, y: 119.99999999999997, width: 285.0, height: 2.0)
                
                self.loginSignupView.email.translatesAutoresizingMaskIntoConstraints = true
                self.loginSignupView.email.frame = CGRect(x: 20.0, y: 141.99999999999997, width: 285.0, height: 30.0)
                self.loginSignupView.lineView2.translatesAutoresizingMaskIntoConstraints = true
                self.loginSignupView.lineView2.frame = CGRect(x: 20.0, y: 171.99999999999997, width: 285.0, height: 2.0)
                
                self.loginSignupView.password.translatesAutoresizingMaskIntoConstraints = true
                self.loginSignupView.password.frame = CGRect(x: 20.0, y: 193.99999999999997, width: 285.0, height: 30.0)
                self.loginSignupView.lineView3.translatesAutoresizingMaskIntoConstraints = true
                self.loginSignupView.lineView3.frame = CGRect(x: 20.0, y: 223.99999999999997, width: 285.0, height: 2.0)
                
                self.loginSignupView.confirmPassword.translatesAutoresizingMaskIntoConstraints = true
                self.loginSignupView.confirmPassword.frame = CGRect(x: 20.0, y: 246.0, width: 285.0, height: 30.0)
                self.loginSignupView.lineView4.translatesAutoresizingMaskIntoConstraints = true
                self.loginSignupView.lineView4.frame = CGRect(x: 20.0, y: 276.0, width: 285.0, height: 2.0)
                
                
                
                
            }) { (bool: Bool) in
                
                UIView.animate(withDuration: 0.1, animations: {
                    self.loginSignupView.email.attributedPlaceholder = NSAttributedString(string: "Email", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1)])
                    self.loginSignupView.confirmPassword.attributedPlaceholder = NSAttributedString(string: "Confrim Password", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1)])
                    
                })
            }
            
        } else {
            self.loginSignupView.loginSignUpBtn.setTitle("Log In", for: .normal)
            UIView.animate(withDuration: 1.0, delay: 0.05, options: .curveEaseInOut, animations: {
                self.loginSignupBtn.setTitle("Sign Up", for: .normal)
                self.dontHaveAccountlable.text = "Don't have an account?"
                
                self.loginSignupView.layoutIfNeeded()
                self.loginSignupView.email.frame = CGRect(x: 20.0, y: 90.0, width: 285.0, height: 30.0)
                self.loginSignupView.password.frame = CGRect(x: 20.0, y: 152.0, width: 285.0, height: 30.0)
                self.loginSignupView.frame = CGRect(x: 25.0, y: 347.33333333333326, width: 325.0, height: self.view.frame.height/3 + 10)
                self.logoView.frame = CGRect(x: 35.0, y: 252.33333333333337, width: 305.0, height: 100.0)
                self.loginSignupView.loginSignUpBtn.frame = CGRect(x: 20.0, y: 251.66666666666669, width: 285.0, height: 58.0)
                
            }) { (bool: Bool) in
                
                UIView.animate(withDuration: 0.1, animations: {
                    self.loginSignupView.email.attributedPlaceholder = NSAttributedString(string: "Email or username", attributes: [NSAttributedString.Key.foregroundColor : #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1)])
                })
                
            }
            
        }
    }
}
