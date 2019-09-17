//
//  Label.swift
//  Tonik
//
//  Created by Student Loaner 3 on 9/11/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit


class Label: UILabel {
    
    public static func customLabel(title: String, textColor: UIColor, textSize: CGFloat) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = textColor
        label.text = title
        label.font.withSize(textSize)
        
        return label
    }
}
