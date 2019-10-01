//
//  LoginSignupViewController.swift
//  Tonik
//
//  Created by Maximo Hinojosa 3 on 9/13/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit



class LoginSignupViewController: UIViewController {
    
    // NOTE: Instatiating views
    var loginSignupView = LoginSignUpView()
    var logoView = LogoView()
    let dontHaveAccountlable = Label.newLabel(title: "Don't have an account?", textColor: #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1), textSize: 16)
    let createAccountBtn = Button.customButton(title: "Sign Up", titleColor: #colorLiteral(red: 0.3921568627, green: 0.01960784314, blue: 0.5607843137, alpha: 1), cornerRadius: 0, backgroundColor: .clear)
    let loginSignUpBtn = Button.customButton(title: "Log In", titleColor: .white, cornerRadius: 30, backgroundColor: #colorLiteral(red: 0.3921568627, green: 0.01960784314, blue: 0.5607843137, alpha: 1))
    lazy var viewHeight = self.view.frame.height
    lazy var viewWidth = self.view.frame.width
    lazy var viewCenterY = self.view.frame.midY
    var addYAxisToLoginSignupView: NSLayoutConstraint!
    var addHeightPaddingToLoginSignupView: NSLayoutConstraint!
    var addYAxisToLogoView: NSLayoutConstraint!
    let datePickerView: UIDatePicker = UIDatePicker()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white
        setUpLogin()
        createAccountBtn.addTarget(self, action: #selector(didPressAccountBtn), for: .touchUpInside)
        loginSignUpBtn.addTarget(self, action: #selector(didPressLoginSignupBtn), for: .touchUpInside)
        showDatePicker()
        //updateViewToUseKeyBorad()
    }
    
  
    
    // NOTE: This function sets the login and sign up view components
    func setUpLogin() {
        
        // NOTE: Adding constraints
        view.addSubview(loginSignupView)
        loginSignupView.translatesAutoresizingMaskIntoConstraints = false
        loginSignupView.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 25).isActive = true
        loginSignupView.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -25).isActive = true
        addYAxisToLoginSignupView = loginSignupView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: viewCenterY / 5 - 30)
        addYAxisToLoginSignupView.isActive = true
        addHeightPaddingToLoginSignupView = loginSignupView.heightAnchor.constraint(equalToConstant: viewHeight / 3 + 30)
        addHeightPaddingToLoginSignupView.isActive = true

        view.addSubview(logoView)
        logoView.translatesAutoresizingMaskIntoConstraints = false
        addYAxisToLogoView = logoView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: -(viewCenterY / 6) * 2)
        addYAxisToLogoView.isActive = true
        logoView.leadingAnchor.constraint(equalTo: loginSignupView.leadingAnchor, constant: 10).isActive = true
        logoView.trailingAnchor.constraint(equalTo: loginSignupView.trailingAnchor, constant: -10).isActive = true
        logoView.heightAnchor.constraint(equalToConstant: 100).isActive = true

        
        view.addSubview(loginSignUpBtn)
        loginSignUpBtn.dropShadow()
        loginSignUpBtn.translatesAutoresizingMaskIntoConstraints = false
        loginSignUpBtn.leadingAnchor.constraint(equalTo: loginSignupView.leadingAnchor, constant: 20).isActive = true
        loginSignUpBtn.trailingAnchor.constraint(equalTo: loginSignupView.trailingAnchor, constant: -20).isActive = true
        loginSignUpBtn.centerXAnchor.constraint(equalTo: loginSignupView.centerXAnchor, constant: 0).isActive = true
        loginSignUpBtn.centerYAnchor.constraint(equalTo: loginSignupView.bottomAnchor, constant: 0).isActive = true
        loginSignUpBtn.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        view.addSubview(dontHaveAccountlable)
        dontHaveAccountlable.bottomAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.bottomAnchor, constant: -10).isActive = true
        dontHaveAccountlable.leadingAnchor.constraint(equalTo: loginSignupView.leadingAnchor, constant: viewWidth/45).isActive = true
        dontHaveAccountlable.heightAnchor.constraint(equalToConstant: 20).isActive = true
        
        view.addSubview(createAccountBtn)
        createAccountBtn.centerYAnchor.constraint(equalTo: dontHaveAccountlable.centerYAnchor, constant: 0).isActive = true
        createAccountBtn.trailingAnchor.constraint(equalTo: loginSignupView.trailingAnchor, constant: -15).isActive = true
        createAccountBtn.heightAnchor.constraint(equalToConstant: 20).isActive = true
        createAccountBtn.widthAnchor.constraint(equalToConstant: 60).isActive = true
        createAccountBtn.heightAnchor.constraint(equalToConstant: 20).isActive = true
    }
    
    @objc func didPressLoginSignupBtn() {
        if self.loginSignUpBtn.currentTitle == "Sign Up" {
            print("pressed")
            let layout = UICollectionViewFlowLayout()
            layout.scrollDirection = .horizontal
            let onBoardingVC = OnBoardingViewController(collectionViewLayout: layout)
            self.navigationController?.pushViewController(onBoardingVC, animated: true)
            
        } else {
            // NOTE: Process the user to login
        }
    }

    @objc func didPressAccountBtn() {
        
        addAnimationToViews()

    }
    
    @objc func datePickerValueChanged() {
        let formatter = DateFormatter()
        formatter.dateFormat = "MM/dd/yyyy"
        self.loginSignupView.dateOfBirth.text = formatter.string(from: datePickerView.date)
        
    }
    
    @objc func doneDatePickerPressed() {
        self.view.endEditing(true)
    }

    // NOTE: This funciton sets up the date picker along with a tool bar
    func showDatePicker() {
        
        datePickerView.datePickerMode = .date
        datePickerView.addTarget(self, action: #selector(datePickerValueChanged), for: .valueChanged)
        
        let toolBar = UIToolbar()
        toolBar.barStyle = UIBarStyle.default
        toolBar.isTranslucent = true
        let space = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(doneDatePickerPressed))
        
        toolBar.setItems([space, doneButton], animated: false)
        toolBar.isUserInteractionEnabled = true
        toolBar.sizeToFit()
        
        self.loginSignupView.dateOfBirth.inputAccessoryView = toolBar
        self.loginSignupView.dateOfBirth.inputView = datePickerView
    }
    
    //NOTE: Updates super view visibility when keyboard is called
    func updateViewToUseKeyBorad() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardDidHideNotification, object: nil)
        hideKeyboardTapped()
    }
    
    
    
    // NOTE: This function animates the given views
    func addAnimationToViews() {
        
        if  createAccountBtn.currentTitle == "Sign Up" {
            
            self.loginSignupView.userName.isEnabled = true
            self.loginSignupView.confirmPassword.isEnabled = true
            self.addYAxisToLogoView.constant = (-viewCenterY / 5) * 3.2
            self.addYAxisToLoginSignupView.constant = viewCenterY / 9 - 50
            self.addHeightPaddingToLoginSignupView.constant = viewHeight / 2 + 50
            self.loginSignupView.addTopPaddingToEmail.constant = 20
            self.loginSignupView.addTopPaddingPassword.constant = 20
            self.loginSignupView.addTopPaddingToConfirmPassword.constant = 20
            self.loginSignupView.addTopPaddingToView.constant = 20
            
            

            UIView.animate(withDuration: 0.8, delay: 0.0, options: .curveEaseInOut, animations: {

                self.view.layoutIfNeeded()
                self.dontHaveAccountlable.alpha = 0
                self.loginSignupView.userName.alpha = 1
                self.loginSignupView.lineView1.alpha = 1
                self.loginSignupView.confirmPassword.alpha = 1
                self.loginSignupView.lineView4.alpha = 1
                self.loginSignupView.toggleSwitch.alpha = 1
                self.loginSignupView.artistLabel.alpha = 1
                self.loginSignupView.dateOfBirth.alpha = 1
                
            })
            
            
            UIView.animate(withDuration: 0.9) {
                self.dontHaveAccountlable.alpha = 1
                self.dontHaveAccountlable.text = "Already have an account?"
                self.loginSignUpBtn.setTitle("Sign Up", for: .normal)
                self.createAccountBtn.setTitle("Log In", for: .normal)
                
            }

        } else {
            
            self.loginSignupView.userName.isEnabled = true
            self.loginSignupView.confirmPassword.isEnabled = true
            self.addYAxisToLoginSignupView.constant = viewCenterY / 5 - 30
            self.addHeightPaddingToLoginSignupView.constant = viewHeight/3 + 30
            self.addYAxisToLogoView.constant = -(viewCenterY / 6) * 2
            self.loginSignupView.addTopPaddingToEmail.constant = -40
            self.loginSignupView.addTopPaddingPassword.constant = 40
            self.loginSignupView.addTopPaddingToConfirmPassword.constant = -40
            self.loginSignupView.addTopPaddingToView.constant = -40
            
            UIView.animate(withDuration: 0.8, delay: 0.0, options: .curveEaseInOut, animations: {
                
                self.view.layoutIfNeeded()
                self.dontHaveAccountlable.alpha = 0
                self.loginSignupView.userName.alpha = 0
                self.loginSignupView.lineView1.alpha = 0
                self.loginSignupView.confirmPassword.alpha = 0
                self.loginSignupView.lineView4.alpha = 0
                self.loginSignupView.toggleSwitch.alpha = 0
                self.loginSignupView.artistLabel.alpha = 0
                self.loginSignupView.dateOfBirth.alpha = 0
                
            })
            
            
            UIView.animate(withDuration: 0.9, animations: {
                self.dontHaveAccountlable.alpha = 1
                self.dontHaveAccountlable.text = "Don't have an account?"
                self.loginSignUpBtn.setTitle("Log In", for: .normal)
                self.createAccountBtn.setTitle("Sign Up", for: .normal)
                
            })

        }
    }
}


