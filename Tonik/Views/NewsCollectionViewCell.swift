//
//  NewsCustomCollectionViewCell.swift
//  Tonik
//
//  Created by Wesley Espinoza on 9/16/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit

class NewsCollectionViewCell: UICollectionViewCell {
    static let reUSeID = "NewsCell"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = UIColor(patternImage: UIImage(named: "NewsBG")!)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}