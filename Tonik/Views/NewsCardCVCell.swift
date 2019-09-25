//
//  NewsCardCVCell.swift
//  Tonik
//
//  Created by Wesley Espinoza on 9/25/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit

class NewsCardCVCell: UICollectionViewCell {
    static let reUseId = "NewsCardCell"
    
    var mainTitle: Label!
    var subTitle: Label!
    var bodyPart: Label!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor  = .gray
        setupText()
    }
    
    func setupText(){
        mainTitle = Label.newLabel(title: "MainTitle", textColor: .black, textSize: 100)
        
        self.add(subview: mainTitle) { (v, p) in [
                v.topAnchor.constraint(equalTo: p.safeAreaLayoutGuide.topAnchor, constant: 8),
                v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 0),
                v.trailingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.trailingAnchor, constant: 0),
                v.heightAnchor.constraint(equalToConstant: 100)
            ]}
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
