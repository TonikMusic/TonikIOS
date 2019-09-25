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
    
    public static func createStackView(with views: [UIView]) -> UIStackView {
        let stackView = UIStackView(arrangedSubviews: views)
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 2
        
        return stackView
    }
}
