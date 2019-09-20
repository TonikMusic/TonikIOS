//
//  FeaturedCollectionViewCell.swift
//  Tonik
//
//  Created by Wesley Espinoza on 9/20/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit

class FeaturedCollectionViewCell: UICollectionViewCell {
    static let reUSeID = "FeaturedCell"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .red
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
