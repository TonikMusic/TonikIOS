//
//  View-Ext.swift
//  Tonik
//
//  Created by Wesley Espinoza on 9/9/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    // NOTE: This function gives any view a shadow affect
    func dropShadow(scale: Bool) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        layer.shadowRadius = 5
    }
    
    // NOTE: This functtion gives a custom cell shadow affect
    func dropCellShadow(scale: Bool) {
        layer.masksToBounds = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowPath = UIBezierPath(roundedRect: self.bounds, cornerRadius: self.layer.cornerRadius).cgPath
        layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        layer.shadowRadius = 8
    }
    
}

