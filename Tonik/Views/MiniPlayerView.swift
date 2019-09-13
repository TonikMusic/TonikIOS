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
        self.backgroundColor = UIColor.init(hexString: "#ededed", alpha: 1)
        let MPMusicImageView = UIImageView()
        MPMusicImageView.image = UIImage(named: "music")?.scaled(with: 0.40)
        

        let MPBackButton = UIButton()
        MPBackButton.setImage(UIImage(named: "back")?.scaled(with: 0.35), for: .normal)
        
        let MPNextButton = UIButton()
        MPNextButton.setImage(UIImage(named: "next")?.scaled(with: 0.35), for: .normal)
        
        let MPPlayButton = UIButton()
        MPPlayButton.setImage(UIImage(named: "play")?.scaled(with: 0.35), for: .normal)
        
        let MPMusicPlayingLabel = UILabel()
        MPMusicPlayingLabel.text = "No Music Playing"
        
        
        
        self.add(subview: MPMusicImageView) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 8)
            ]}
        
        self.add(subview: MPMusicPlayingLabel) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: -15),
            v.leadingAnchor.constraint(equalTo: MPMusicImageView.safeAreaLayoutGuide.trailingAnchor, constant: 8)
            ]}
        
        self.add(subview: MPBackButton) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            v.leadingAnchor.constraint(equalTo: MPMusicPlayingLabel.safeAreaLayoutGuide.trailingAnchor, constant: 90)
            ]}
        
        self.add(subview: MPPlayButton) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            v.leadingAnchor.constraint(equalTo: MPBackButton.safeAreaLayoutGuide.trailingAnchor, constant: 8)
            ]}
        
        self.add(subview: MPNextButton) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: -8),
            v.leadingAnchor.constraint(equalTo: MPPlayButton.safeAreaLayoutGuide.trailingAnchor, constant: 8)
            ]}
    }
    
}
