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
    
    var artistImageView: UIImageView!
    var artistNameLabel: UILabel!
    var genreCollectionView: UICollectionView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = UIColor.init(hexString: "#f6b1cd")
        
        setUpImageView()
        setUpNameLabel()
    }
    
    func setUpImageView(){
        artistImageView = UIImageView()
        artistImageView.image = UIImage(named: "reeves")
        
        // NOTE: add to parent view with constraints
        self.add(subview: artistImageView) { (v, p) in [
            v.topAnchor.constraint(equalTo: p.safeAreaLayoutGuide.topAnchor, constant: 25),
            v.widthAnchor.constraint(equalToConstant: 150),
            v.heightAnchor.constraint(equalToConstant: 150),
            v.centerXAnchor.constraint(equalTo: p.safeAreaLayoutGuide.centerXAnchor)
            ]}
        
        // NOTE: set border and make round
        artistImageView.layer.masksToBounds = false
        artistImageView.layer.borderColor = UIColor.white.cgColor
        artistImageView.layer.borderWidth = 1
        artistImageView.layer.cornerRadius = 75
        artistImageView.clipsToBounds = true
        
    }
    
    
    func setUpNameLabel() {
        artistNameLabel = UILabel()
        artistNameLabel.text = "Keanu Reeves"
        // NOTE: add to parent with constraints
        self.add(subview: artistNameLabel) { (v, p) in [
            v.topAnchor.constraint(equalTo: artistImageView.safeAreaLayoutGuide.bottomAnchor, constant: 8),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            v.trailingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            v.heightAnchor.constraint(equalToConstant: 50),
            v.centerXAnchor.constraint(equalTo: p.safeAreaLayoutGuide.centerXAnchor)
            ]}
        
        artistNameLabel.textColor = .white
        artistNameLabel.textAlignment = .center
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
