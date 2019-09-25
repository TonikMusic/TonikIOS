//
//  View.swift
//  Tonik
//
//  Created by Student Loaner 3 on 9/13/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit


class View: UIView {
    
    lazy var parentView: UIView = self.createView()
    lazy var stackView: UIStackView = self.createStackView()
    
    public static func dropView(backgroundColor: UIColor) -> UIView {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = backgroundColor
        
        return view
    }
    
    
    func createStackView() -> UIStackView {
        let stackView = UIStackView()
        stackView.distribution = .fillEqually
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 2
        
        return stackView
    }
}
