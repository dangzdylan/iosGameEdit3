//
//  labels.swift
//  dodge2
//
//  Created by Dylan on 8/2/21.
//  Copyright © 2021 S-Crew. All rights reserved.
//

import SpriteKit
import GameplayKit


func addScore(self:GameScene){
    score.text = "0"
    score.fontSize = screenHeight/4
    score.fontColor = labelColor
    
    score.position = CGPoint(x:0, y:-screenHeight/8)
    score.zPosition = -10
    
    self.addChild(score)
}
