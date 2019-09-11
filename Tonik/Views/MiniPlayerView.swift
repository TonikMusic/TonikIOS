//
//  MiniPlayerView.swift
//  Tonik
//
//  Created by Wesley Espinoza on 9/11/19.
//  Copyright © 2019 HazeWritesCode. All rights reserved.
//

import Foundation
import UIKit


class MiniPlayer: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpView() {
        let MusicImageView = UIImageView()
        MusicImageView.image = UIImage(named: "music")
        
        self.add(subview: MusicImageView) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 8)
            ]}
    }
    
}
