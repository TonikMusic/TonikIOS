//
//  LogoView.swift
//  Tonik
//
//  Created by Student Loaner 3 on 9/14/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit



class LogoView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .red
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // NOTE: this function constraints the view components
    private func setUpView() {
        
        let h = self.frame.height
        let w = self.frame.width
        
        
        // NOTE: instantiating view components
        let logoView = CustomImage.image(name: "logo3")
        logoView.dropCustomShadow(shadowColor: .black, shadowOpacity: 0.3, shadowOffsetWidth: 0.0, shadowOffsetHeight: 9.0)
        
        
        // NOTE: constrainting view components
        self.add(subview: logoView) { (v, p) in [
            v.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: 80),
            v.centerXAnchor.constraint(equalTo: self.centerXAnchor, constant: -20),
            v.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 1),
            v.heightAnchor.constraint(equalTo: self.heightAnchor, constant: -40)
            ]}
    }
}
