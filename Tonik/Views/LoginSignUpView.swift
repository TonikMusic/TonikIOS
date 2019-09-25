//
//  LoignSignUpView.swift
//  Tonik
//
//  Created by Maximo Hinojosa on 9/9/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit

class LoginSignUpView: UIView {
    
    // NOTE: instantiating UIViews
    let userName = TextField.initTextBox(.clear, #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), 0, .clear, "Username", 16)
    let lineView1 = View.dropView(backgroundColor: #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1))
    let email = TextField.initTextBox(.white, #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), 0, .clear, "Email", 16)
    let lineView2 = View.dropView(backgroundColor: #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1))
    let password = TextField.initTextBox(.white, #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), 0, .clear, "Password", 16)
    let lineView3 = View.dropView(backgroundColor: #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1))
    let confirmPassword = TextField.initTextBox(.white, #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), 0, .clear, "Confirm Password", 16)
    let lineView4 = View.dropView(backgroundColor: #colorLiteral(red: 0.5704585314, green: 0.5704723597, blue: 0.5704649091, alpha: 1))
    let dateOfBirth = TextField.initTextBox(.clear, #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), 0, .clear, "Date of Birth", 16)
    let loginSignUpBtn = Button.customButton(title: "Log In", titleColor: .white, cornerRadius: 30, backgroundColor: #colorLiteral(red: 0.3921568627, green: 0.01960784314, blue: 0.5607843137, alpha: 1))
    lazy var checkedBox = CustomImage.image(name: "uncheckBox")
    lazy var artistLabel = Label.customLabel(title: "Are you an artist?", textColor: #colorLiteral(red: 0.568627451, green: 0.4705882353, blue: 0.4705882353, alpha: 1), textSize: 14)
//    let stackView = StackView.createStackView(with: [self.checkedBox, self.artistLabel])
    
    
    
    // NOTE: Setting constraint variables
    var addTopPaddingToEmail: NSLayoutConstraint!
    var addTopPaddingPassword: NSLayoutConstraint!
    var addTopPaddingToConfirmPassword: NSLayoutConstraint!
    var addTopPaddingTologinSignUpBtn: NSLayoutConstraint!
    var addTopPaddingToDOB: NSLayoutConstraint!
    
    
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
        
        self.addSubview(userName)
        userName.translatesAutoresizingMaskIntoConstraints = false
        //100
        userName.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        userName.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        userName.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        userName.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        self.addSubview(lineView1)
        lineView1.translatesAutoresizingMaskIntoConstraints = false
        lineView1.topAnchor.constraint(equalTo: userName.bottomAnchor, constant: 0).isActive = true
        lineView1.leadingAnchor.constraint(equalTo: userName.leadingAnchor, constant: 0).isActive = true
        lineView1.trailingAnchor.constraint(equalTo: userName.trailingAnchor, constant: 0).isActive = true
        lineView1.heightAnchor.constraint(equalToConstant: 2).isActive = true
        
        
        self.addSubview(email)
        email.translatesAutoresizingMaskIntoConstraints = false
        addTopPaddingToEmail = email.topAnchor.constraint(equalTo: lineView1.topAnchor, constant: -40)
        addTopPaddingToEmail.isActive = true
        email.leadingAnchor.constraint(equalTo: userName.leadingAnchor, constant: 0).isActive = true
        email.trailingAnchor.constraint(equalTo: userName.trailingAnchor, constant: 0).isActive = true
        email.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        self.addSubview(lineView2)
        lineView2.translatesAutoresizingMaskIntoConstraints = false
        lineView2.topAnchor.constraint(equalTo: email.bottomAnchor, constant: 0).isActive = true
        lineView2.leadingAnchor.constraint(equalTo: email.leadingAnchor, constant: 0).isActive = true
        lineView2.trailingAnchor.constraint(equalTo: email.trailingAnchor, constant: 0).isActive = true
        lineView2.heightAnchor.constraint(equalTo: lineView1.heightAnchor, constant: 0).isActive = true
    
        
        self.addSubview(password)
        password.translatesAutoresizingMaskIntoConstraints = false
        addTopPaddingPassword = password.topAnchor.constraint(equalTo: lineView2.topAnchor, constant: 40)
        addTopPaddingPassword.isActive = true
        password.leadingAnchor.constraint(equalTo: email.leadingAnchor, constant: 0).isActive = true
        password.trailingAnchor.constraint(equalTo: email.trailingAnchor, constant: 0).isActive = true
        password.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        self.addSubview(lineView3)
        lineView3.translatesAutoresizingMaskIntoConstraints = false
        lineView3.topAnchor.constraint(equalTo: password.bottomAnchor, constant: 0).isActive = true
        lineView3.leadingAnchor.constraint(equalTo: password.leadingAnchor, constant: 0).isActive = true
        lineView3.trailingAnchor.constraint(equalTo: password.trailingAnchor, constant: 0).isActive = true
        lineView3.heightAnchor.constraint(equalTo: lineView2.heightAnchor, constant: 0).isActive = true
        
        
        self.addSubview(confirmPassword)
        self.sendSubviewToBack(confirmPassword)
        confirmPassword.translatesAutoresizingMaskIntoConstraints = false
        addTopPaddingToConfirmPassword = confirmPassword.topAnchor.constraint(equalTo: lineView3.topAnchor, constant: -40)
        addTopPaddingToConfirmPassword.isActive = true
        confirmPassword.leadingAnchor.constraint(equalTo: password.leadingAnchor, constant: 0).isActive = true
        confirmPassword.trailingAnchor.constraint(equalTo: password.trailingAnchor, constant: 0).isActive = true
        confirmPassword.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        self.addSubview(lineView4)
        self.sendSubviewToBack(lineView4)
        lineView4.translatesAutoresizingMaskIntoConstraints = false
        lineView4.topAnchor.constraint(equalTo: confirmPassword.bottomAnchor, constant: 0).isActive = true
        lineView4.leadingAnchor.constraint(equalTo: confirmPassword.leadingAnchor, constant: 0).isActive = true
        lineView4.trailingAnchor.constraint(equalTo: confirmPassword.trailingAnchor, constant: 0).isActive = true
        lineView4.heightAnchor.constraint(equalTo: lineView3.heightAnchor, constant: 0).isActive = true
        
        
        
        self.addSubview(dateOfBirth)
        self.sendSubviewToBack(dateOfBirth)
        self.translatesAutoresizingMaskIntoConstraints = false
        addTopPaddingToDOB = dateOfBirth.topAnchor.constraint(equalTo: lineView4.topAnchor, constant: -40)
        addTopPaddingToDOB.isActive = true
        dateOfBirth.leadingAnchor.constraint(equalTo: lineView4.leadingAnchor, constant: 0).isActive = true
        dateOfBirth.trailingAnchor.constraint(equalTo: lineView4.trailingAnchor, constant: 0).isActive = true
        dateOfBirth.heightAnchor.constraint(equalToConstant: 40).isActive = true
        
        
        
        
        self.addSubview(loginSignUpBtn)
        loginSignUpBtn.translatesAutoresizingMaskIntoConstraints = false
        loginSignUpBtn.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor, constant: 20).isActive = true
        loginSignUpBtn.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor, constant: -20).isActive = true
        loginSignUpBtn.centerXAnchor.constraint(equalTo: self.safeAreaLayoutGuide.centerXAnchor, constant: 0).isActive = true
        loginSignUpBtn.centerYAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor, constant: 0).isActive = true
        loginSignUpBtn.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
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
