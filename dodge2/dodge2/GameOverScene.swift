//
//  GameOverScene.swift
//  dodge2
//
//  Created by Dylan on 7/14/21.
//  Copyright © 2021 S-Crew. All rights reserved.
//

import SpriteKit
import GameplayKit

class GameOverScene: SKScene {
    
    let gameOverLabel = SKLabelNode(text: "Game over! ")
    let playAgainLabel = SKLabelNode(text: "Main Menu")
    
    override func didMove(to view: SKView) {
        
        gameOverLabel.position = CGPoint(x: 0, y: 0)
        playAgainLabel.position = CGPoint(x: gameOverLabel.position.x, y: gameOverLabel.position.y - 100)
        
        gameOverLabel.fontSize = 25
        playAgainLabel.fontSize = 35
        playAgainLabel.fontColor = .black
        
        
        self.addChild(gameOverLabel)
        self.addChild(playAgainLabel)
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        for touch in touches{
            let location = touch.location(in:self)
            
            if playAgainLabel.contains(location){
                let temp = GameScene(fileNamed: "GameScene")
                self.scene?.view?.presentScene(temp!, transition: SKTransition.doorsOpenVertical(withDuration: 1))
                
            }
        }
    }


}
