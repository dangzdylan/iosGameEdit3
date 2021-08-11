//
//  GameViewController.swift
//  dodge2
//
//  Created by Dylan on 7/14/21.
//  Copyright © 2021 S-Crew. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit

class GameViewController: UIViewController {
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

        let scene = BlackScreen(size: view.bounds.size)
        let skView = view as! SKView
        
        skView.showsFPS = false
        skView.showsNodeCount = true
        skView.ignoresSiblingOrder = true
        skView.allowsTransparency = true
        
        skView.showsPhysics = true
        
        scene.scaleMode = .resizeFill
        skView.presentScene(scene)
    }

    
    override var shouldAutorotate: Bool {
        return false
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }
}
