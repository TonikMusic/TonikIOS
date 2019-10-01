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
    
    // NOTE: override init
    override init(frame: CGRect) {
        super.init(frame: frame)
        // NOTE: calls SetUpView whihc sets up the views within the miniplayer
        setUpView()
    }
    
    // NOTE: required
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // NOTE: play button press check
    @objc func playButtonTapped(button: UIButton){
        
        // NOTE: checks the tag of the button to deside what state it should be in
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
        self.backgroundColor = UIColor.init(hexString: "#ededed", alpha: 0.9)
        
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
        
        
        // NOTE: add to view with constraints
        self.add(subview: MPMusicImageView) { (v, p) in [
            
            v.centerYAnchor.constraint(equalTo: p.safeAreaLayoutGuide.centerYAnchor, constant: -5),
            v.leadingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.leadingAnchor, constant: 8)
            ]}
        
        self.add(subview: MPNextButton) { (v, p) in [
            v.centerYAnchor.constraint(equalTo: p.safeAreaLayoutGuide.centerYAnchor),
            v.trailingAnchor.constraint(equalTo: p.safeAreaLayoutGuide.trailingAnchor, constant: -8)
            ]}
        
        
        self.add(subview: MPPlayButton) { (v, p) in [
            v.centerYAnchor.constraint(equalTo: p.safeAreaLayoutGuide.centerYAnchor),
            v.trailingAnchor.constraint(equalTo: MPNextButton.safeAreaLayoutGuide.leadingAnchor, constant: -8)
            ]}
        
        // NOTE: add to view with constraints
        self.add(subview: MPBackButton) { (v, p) in [
            v.centerYAnchor.constraint(equalTo: p.safeAreaLayoutGuide.centerYAnchor),
            v.trailingAnchor.constraint(equalTo: MPPlayButton.safeAreaLayoutGuide.leadingAnchor, constant: -8)
            ]}
        
        // NOTE: add to view with constraints
        self.add(subview: MPMusicPlayingLabel) { (v, p) in [
            v.centerYAnchor.constraint(equalTo: p.safeAreaLayoutGuide.centerYAnchor),
            v.leadingAnchor.constraint(equalTo: MPMusicImageView.safeAreaLayoutGuide.trailingAnchor, constant: 8)
            ]}
    }
    
}
