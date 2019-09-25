//
//  ViewController.swift
//  Tonik
//
//  Created by Wesley Espinoza on 8/29/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import UIKit
import Foundation

class HomeViewController: UIViewController {
    var homeFeedCollectionView: UICollectionView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUpNewsCollectionView()
        view.backgroundColor = .white
    }
    
    
    
    
    
    // Sets up the needed properties for the collectionView
    func setUpNewsCollectionView(){
        // NOTE: set the flowLayput for the colelction view to use
        let flowLayout = UICollectionViewFlowLayout()
        // NOTE: baisc setup for collectionCiew
        homeFeedCollectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height), collectionViewLayout:flowLayout)
        homeFeedCollectionView.dataSource = self
        homeFeedCollectionView.delegate = self
        homeFeedCollectionView.backgroundColor = .white
        homeFeedCollectionView.register(NewsCVCell.self, forCellWithReuseIdentifier: NewsCVCell.reUseID)
        homeFeedCollectionView.register(FeaturedCVCell.self, forCellWithReuseIdentifier: FeaturedCVCell.reUseID)
        homeFeedCollectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        // NOTE: add to parent with constraints
        view.add(subview: homeFeedCollectionView) { (v, p) in [
            v.topAnchor.constraint(equalTo: p.safeAreaLayoutGuide.topAnchor, constant: 0),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 0),
            v.trailingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.trailingAnchor, constant: 0),
            v.heightAnchor.constraint(equalToConstant: p.bounds.height - 70)
            
            ]}
        
        
    }
    
}


extension HomeViewController: UICollectionViewDataSource {
    // NOTE: number of cells to return
    func collectionView(_ collectionView: UICollectionView,
                        numberOfItemsInSection section: Int) -> Int {
        return 2
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var cell = UICollectionViewCell()
        
        // NOTE: switch statment to return different cells at different indexs
        switch indexPath.row {
        case 0:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: NewsCVCell.reUseID, for: indexPath)
            break
        case 1:
            cell = collectionView.dequeueReusableCell(withReuseIdentifier: FeaturedCVCell.reUseID, for: indexPath)
            break
        default:
            cell = UICollectionViewCell()
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
        
        
    }
}

extension HomeViewController: UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
    }
    
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: homeFeedCollectionView.bounds.width, height: homeFeedCollectionView.bounds.height - 175 )
    }
    
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 10, bottom: 25, right: 10)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: false)
    }
}

