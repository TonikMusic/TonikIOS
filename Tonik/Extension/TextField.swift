//
//  ViewTextBoxExt.swift
//  Tonik
//
//  Created by Wesley Espinoza on 9/9/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit


// NOTE: this is a custom textfield class
class TextField: UITextField {
    
    // NOTE: padding value is used for custom textfield insets
    let padding = UIEdgeInsets(top: 0, left: 60, bottom: 0, right: 0)
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    // NOTE: creates a custom textfield
    public static func textBox(_ backgroundColor: UIColor, _ textColor: UIColor , _ borderWidth: CGFloat, _ borderColor: UIColor, _ placeHolder: String, _ textSize: CGFloat, _ leftViewImage: String) -> TextField  {
        let textField = TextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .left
        textField.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [NSAttributedString.Key.foregroundColor : UIColor.white])
        textField.textColor = textColor
        textField.leftViewMode = .always
        let imageView = UIImageView(image: UIImage(named: leftViewImage))
        imageView.frame = CGRect(x: 10, y: 2, width: 25 , height: 25)
        let paddingView: UIView = UIView.init(frame: CGRect(x: 0, y: 0, width: 50, height: 30))
        paddingView.addSubview(imageView)
        textField.leftViewMode = .always
        textField.leftView = paddingView
        textField.borderStyle = .none
        textField.layer.backgroundColor = backgroundColor.cgColor
        textField.font = UIFont.systemFont(ofSize: textSize)
        textField.layer.cornerRadius = 25
        textField.layer.masksToBounds = true
        textField.layer.borderWidth = borderWidth
        textField.layer.borderColor = borderColor.cgColor
        
        return textField
    }
}
