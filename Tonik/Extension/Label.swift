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
    
    public static func newLabel(title: String, textColor: UIColor, textSize: CGFloat) -> Label {
        let label = Label()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = textColor
        label.text = title
        label.font.withSize(textSize)
        
        return label
    }
}
