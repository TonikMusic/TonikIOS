//
//  SignUpView.swift
//  Tonik
//
//  Created by Wesley Espinoza on 9/9/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit

class SignUpView: UIView {
    
    // NOTE: instantiating view components
    let userName = TextField.initTextBox(.red, .red, .red, 0, .clear, "Username", 30)
    var signUpBtn = Button.customButton(title: "Next", titleColor: .white, cornerRadius: 1, backgroundColor: #colorLiteral(red: 0.3921568627, green: 0.01960784314, blue: 0.5607843137, alpha: 1))
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // NOTE: this function constraints the view components
    private func setUpView() {
        self.backgroundColor = .white
        self.layer.cornerRadius = 25
        self.dropShadow()
        
        signUpBtn.frame = CGRect(x: 100, y: 100, width: 100, height: 0)
        
        
        // NOTE: constrainting view components
        self.add(subview: userName) { (v, p) in [
            v.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            v.widthAnchor.constraint(equalTo: self.widthAnchor, constant: -20),
            v.heightAnchor.constraint(equalToConstant: 30)
            ]}
        
        self.add(subview: signUpBtn) { (v, p) in [
            v.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 20),
            v.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            v.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: 0),
            v.centerYAnchor.constraint(equalTo: self.bottomAnchor, constant: 0),
            
            ]}
        
        signUpBtn.layer.cornerRadius = signUpBtn.frame.width / 2
        
        
    }
    
    
    
    
    
}
