//
//  OnBoardingViewController.swift
//  Tonik
//
//  Created by Maximo Hinojosa on 9/27/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import UIKit


struct OnBoardingContent {
    let imgName: String!
    let text: String!
}

class OnBoardingViewController: UICollectionViewController {

    
    let imgContentList: [OnBoardingContent] = [
        OnBoardingContent.init(imgName: "onBoarding1", text: "Check out the latest news and upcoming artist"),
        OnBoardingContent.init(imgName: "onBoarding2", text: "Interact with your community through post and keep them updated!"),
        OnBoardingContent.init(imgName: "onBoarding3", text: "Switch over to the songs section to quickly add or remove a song or album"),
        OnBoardingContent.init(imgName: "onBoarding4", text: "Edit your account through the settings tab")
    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupCollectionViewComponents()
        
    }
    
    
    func setupCollectionViewComponents() {
        collectionView.backgroundColor = .white
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.register(OnBoardingPageCell.self, forCellWithReuseIdentifier: OnBoardingPageCell.cellId)
        collectionView.isPagingEnabled = true
    }

    
}

/*
   NOTE: (UICollectionViewDataSource) this is responsible for providing the data and views required by a collection view. A data source object represents
   your app’s data model and vends information to the collection view as needed. It also handles the creation and
   configuration of cell and supplementary views used by the collection view to display your data.
*/
extension OnBoardingViewController {
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cellId", for: indexPath) as! OnBoardingPageCell
        cell.onBoardingImg.image = UIImage(named: imgContentList[indexPath.row].imgName!)
        cell.onBoardingLabel.text = imgContentList[indexPath.row].text
        
        return cell
    }
}


/*
 NOTE: (UICollectionViewDelegateFlowLayout) methods that let you coordinate with a UICollectionViewFlowLayout object to implement a grid-based layout. The methods of this protocol define the size of items and the spacing between items in the grid.
 */
extension OnBoardingViewController: UICollectionViewDelegateFlowLayout {
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imgContentList.count
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: view.frame.width, height: view.bounds.height - 100)
    }
    
}
