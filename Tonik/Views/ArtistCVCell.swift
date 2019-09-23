//
//  ArtistCell.swift
//  Tonik
//
//  Created by Wesley Espinoza on 9/23/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit

class ArtistCVCell: UICollectionViewCell {
    static let reUseId = "ArtistCVCell"
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = . white
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
