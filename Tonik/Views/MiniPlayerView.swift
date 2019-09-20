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
    
    var isMusicPlaying = false
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    @objc func playButtonTapped(button: UIButton){
        if (button.tag == 0) {
            button.setImage(UIImage(named: "pause")?.scaled(with: 0.35), for: .normal)
            button.tag = 1
        } else {
            button.setImage(UIImage(named: "play")?.scaled(with: 0.35), for: .normal)
            button.tag = 0
        }
    }
    
    
    
    
    private func setUpView() {
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.lightGray.cgColor
        self.backgroundColor = UIColor.init(hexString: "#ededed", alpha: 1)
        let MPMusicImageView = UIImageView()
        MPMusicImageView.image = UIImage(named: "music")?.scaled(with: 0.50)
        

        let MPBackButton = UIButton()
        MPBackButton.setImage(UIImage(named: "back")?.scaled(with: 0.35), for: .normal)
        
        let MPNextButton = UIButton()
        MPNextButton.setImage(UIImage(named: "next")?.scaled(with: 0.35), for: .normal)
        
        let MPPlayButton = UIButton()
        MPPlayButton.addTarget(self, action: #selector(playButtonTapped), for: .touchUpInside)
        MPPlayButton.setImage(UIImage(named: "play")?.scaled(with: 0.35), for: .normal)
        MPPlayButton.tag = 0
        
        let MPMusicPlayingLabel = UILabel()
        MPMusicPlayingLabel.text = "No Music Playing"
        
        
        
        self.add(subview: MPMusicImageView) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: -15),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 8)
            ]}
        
        self.add(subview: MPMusicPlayingLabel) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: -25),
            v.leadingAnchor.constraint(equalTo: MPMusicImageView.safeAreaLayoutGuide.trailingAnchor, constant: 8)
            ]}
        
        self.add(subview: MPBackButton) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            v.leadingAnchor.constraint(equalTo: MPMusicPlayingLabel.safeAreaLayoutGuide.trailingAnchor, constant: 90)
            ]}
        
        self.add(subview: MPPlayButton) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            v.leadingAnchor.constraint(equalTo: MPBackButton.safeAreaLayoutGuide.trailingAnchor, constant: 8)
            ]}
        
        self.add(subview: MPNextButton) { (v, p) in [
            v.bottomAnchor.constraint(equalTo: p.safeAreaLayoutGuide.bottomAnchor, constant: -20),
            v.leadingAnchor.constraint(equalTo: MPPlayButton.safeAreaLayoutGuide.trailingAnchor, constant: 8)
            ]}
    }
    
}
