//
//  StackView.swift
//  Tonik
//
//  Created by Student Loaner 3 on 9/25/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit


class Stack: UIStackView {
    
    public static func createStackView(with views: [UIView], alignment: UIStackView.Alignment, distribution: Distribution, axis: NSLayoutConstraint.Axis, spacing: CGFloat) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.distribution = distribution
        stackView.axis = axis
        stackView.alignment = alignment
        stackView.spacing = spacing
        
        return stackView
    }
}
