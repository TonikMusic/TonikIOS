//
//  NewsCustomCollectionViewCell.swift
//  Tonik
//
//  Created by Wesley Espinoza on 9/16/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit

class NewsCVCell: UICollectionViewCell {
    static let reUseID = "NewsCell"
    var newsCollectionView: UICollectionView!
    let flowLayout = UICollectionViewFlowLayout()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpNewsCollectionView()
    }
    // NOTE: required
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func setUpNewsCollectionView(){
        // NOTE: sets the flow layout and makes the scroll horizontal
        flowLayout.scrollDirection = .horizontal
        // NOTE: init the collection view
        newsCollectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: self.bounds.width, height: self.bounds.height), collectionViewLayout: flowLayout)
        newsCollectionView.dataSource = self
        newsCollectionView.delegate = self
        newsCollectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        newsCollectionView.backgroundColor = .white
        newsCollectionView.register(NewsCardCVCell.self, forCellWithReuseIdentifier: NewsCardCVCell.reUseId)
        // NOTE: add to parent view with constraints
        self.add(subview: newsCollectionView) { (v, p) in [
            v.topAnchor.constraint(equalTo: p.safeAreaLayoutGuide.topAnchor, constant: 0),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            v.trailingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            v.heightAnchor.constraint(equalToConstant: p.bounds.height)
            
            ]}
    }
}

// NOTE: Extensions for colelctionView
extension NewsCVCell: UICollectionViewDataSource {
    
    // NOTE: numbers of cells to return
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    // NOTE: what kind of cell to return
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = newsCollectionView.dequeueReusableCell(withReuseIdentifier: NewsCardCVCell.reUseId, for: indexPath) as! NewsCardCVCell
        
        
        cell.layer.cornerRadius = 15
        
        return cell
    }
    
    // NOTE: was the cell tappped
    
    func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
        
        
    }
    
}

// NOTE: collectionView delegate extension
extension NewsCVCell: UICollectionViewDelegate {
    
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
// NOTE: CollectionViewDelegateFlowLayout extension
extension NewsCVCell: UICollectionViewDelegateFlowLayout {
    
    // NOTE: size of the cell
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: newsCollectionView.bounds.width - 25, height: newsCollectionView.bounds.height - 175)
    }
    
    // NOTE: padding
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        let cellWidth : CGFloat = newsCollectionView.bounds.width - 25

        let numberOfCells = floor(self.frame.size.width / cellWidth)
        let edgeInsets = (self.frame.size.width - (numberOfCells * cellWidth)) / (numberOfCells + 1)

        return UIEdgeInsets(top: 0, left: edgeInsets, bottom: 0, right: edgeInsets)
    }
    
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 50
    }
    
    

}



