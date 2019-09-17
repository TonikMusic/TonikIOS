//
//  SignUpView.swift
//  Tonik
//
//  Created by Wesley Espinoza on 9/9/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit

class LoginSignUpView: UIView {
    
    // NOTE: instantiating UIViews
    let logoView = LogoView()
    let userName = TextField.initTextBox(.clear, #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), 0, .clear, "", 16)
    let lineView1 = View.dropView(backgroundColor: #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1))
    let email = TextField.initTextBox(.white, #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), 0, .clear, "Email or username", 16)
    let lineView2 = View.dropView(backgroundColor: #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1))
    let password = TextField.initTextBox(.white, #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), 0, .clear, "Password", 16)
    let lineView3 = View.dropView(backgroundColor: #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1))
    let confirmPassword = TextField.initTextBox(.clear, #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), 0, .clear, "", 16)
    let lineView4 = View.dropView(backgroundColor: #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1))
    let loginSignUpBtn = Button.customButton(title: "Log In", titleColor: .white, cornerRadius: 30, backgroundColor: #colorLiteral(red: 0.3921568627, green: 0.01960784314, blue: 0.5607843137, alpha: 1))
    
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        secureTextField()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // NOTE: this function constraints the view components
    private func setUpView() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 25
        self.dropShadow()
        
        
        
        
        // NOTE: constrainting view
        self.add(subview: email) { (v, p) in [
            //70
            v.topAnchor.constraint(equalTo: p.safeAreaLayoutGuide.topAnchor, constant: 90),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            v.trailingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            v.heightAnchor.constraint(equalToConstant: 30)
            ]}
        
        self.add(subview: lineView2) { (v, p) in [
            v.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 0),
            v.leadingAnchor.constraint(equalTo: email.leadingAnchor, constant: 0),
            v.trailingAnchor.constraint(equalTo: email.trailingAnchor, constant: 0),
            v.heightAnchor.constraint(equalTo: email.heightAnchor, constant: -28)
            ]}
        
        self.add(subview: userName) { (v, p) in [
            v.topAnchor.constraint(equalTo: email.topAnchor, constant: 0),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            v.trailingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            v.heightAnchor.constraint(equalToConstant: 30)
            ]}
        
        self.add(subview: lineView1) { (v, p) in [
            v.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 0),
            v.leadingAnchor.constraint(equalTo: userName.leadingAnchor, constant: 0),
            v.trailingAnchor.constraint(equalTo: userName.trailingAnchor, constant: 0),
            v.heightAnchor.constraint(equalTo: userName.heightAnchor, constant: -28)
            ]}
        
        self.add(subview: password) { (v, p) in [
            v.topAnchor.constraint(equalTo: lineView2.bottomAnchor, constant: 20),
            v.leadingAnchor.constraint(equalTo: lineView2.leadingAnchor, constant: 0),
            v.trailingAnchor.constraint(equalTo: lineView2.trailingAnchor, constant: 0),
            v.heightAnchor.constraint(equalToConstant: 30)
            ]}
        
        self.add(subview: lineView3) { (v, p) in [
            v.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 0),
            v.leadingAnchor.constraint(equalTo: password.leadingAnchor, constant: 0),
            v.trailingAnchor.constraint(equalTo: password.trailingAnchor, constant: 0),
            v.heightAnchor.constraint(equalTo: password.heightAnchor, constant: -28)
            ]}
        
        self.add(subview: confirmPassword) { (v, p) in [
            v.topAnchor.constraint(equalTo: password.topAnchor, constant: 0),
            v.leadingAnchor.constraint(equalTo: password.leadingAnchor, constant: 0),
            v.trailingAnchor.constraint(equalTo: password.trailingAnchor, constant: 0),
            v.heightAnchor.constraint(equalToConstant: 30)
            ]}
        
        self.add(subview: lineView4) { (v, p) in [
            v.topAnchor.constraint(equalTo: confirmPassword.bottomAnchor, constant: 0),
            v.leadingAnchor.constraint(equalTo: confirmPassword.leadingAnchor, constant: 0),
            v.trailingAnchor.constraint(equalTo: confirmPassword.trailingAnchor, constant: 0),
            v.heightAnchor.constraint(equalTo: confirmPassword.heightAnchor, constant: -28)
            ]}
        
        self.add(subview: loginSignUpBtn) { (v, p) in [
            v.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20),
            v.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            v.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor, constant: 0),
            v.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: 0),
            v.heightAnchor.constraint(equalToConstant: 58)
            ]}
        
    }
    
    
    private func secureTextField() {
        userName.isEnabled = false
        confirmPassword.isEnabled = false
        password.isSecureTextEntry = true
        password.textContentType = .oneTimeCode
        confirmPassword.isSecureTextEntry = true
        confirmPassword.textContentType = .oneTimeCode
        
    }
    
    
}
