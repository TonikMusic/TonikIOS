//
//  Button-Ext.swift
//  Tonik
//
//  Created by Wesley Espinoza on 9/9/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit


// NOTE: this is a custom button class
class Button: UIButton {
    
    // NOTE: function allows to make a custom buttom
    public static func customButton(title: String, titleSize: CGFloat = CGFloat(16), boldText: CGFloat = CGFloat(0), titleColor: UIColor, cornerRadius: CGFloat, backgroundColor: UIColor) -> UIButton {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        //guard let boldText = boldText else { return button}
        button.titleLabel?.font = UIFont.boldSystemFont(ofSize: boldText)
        button.titleLabel?.font = UIFont.systemFont(ofSize: titleSize)
        button.setTitle(title, for: .normal)
        button.backgroundColor = backgroundColor
        button.setTitleColor(titleColor, for: .normal)
        button.layer.cornerRadius = cornerRadius
        
        
        return button
    }

}
