//
//  startpage.swift
//  dodge2
//
//  Created by Dylan on 8/9/21.
//  Copyright © 2021 S-Crew. All rights reserved.
//

import SpriteKit
import GameplayKit

func addStartLabels(self: GameScene){
    
    //dec
    tapToLabel = SKLabelNode(text: "Tap to")
    startLabel = SKLabelNode(text: "start")
    
    //attributes
    tapToLabel.fontSize = screenHeight/30
    startLabel.fontSize = screenHeight/30
    
    tapToLabel.position = CGPoint(x: 0, y: screenHeight/30)
    startLabel.position = CGPoint(x: 0, y: -screenHeight/20)
    
    tapToLabel.fontColor = labelColor
    startLabel.fontColor = labelColor
    
    //add to scene
    self.addChild(tapToLabel)
    self.addChild(startLabel)
}


func startGame(self:GameScene){
    
    //hide start labels
    tapToLabel.isHidden = true
    startLabel.isHidden = true
    
    //apply impulse and spawn monster
    //Player.physicsBody?.applyImpulse(CGVector(dx: Player.size.width/5, dy: Player.size.width/5))
    
    addScore(self: self)
    spawnMonster(self: self)
    

}
