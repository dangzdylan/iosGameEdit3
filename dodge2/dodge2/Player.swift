//
//  Player.swift
//  dodge2
//
//  Created by Dylan on 8/2/21.
//  Copyright © 2021 S-Crew. All rights reserved.
//

import SpriteKit
import GameplayKit


func addPlayer(self:GameScene){
    
    let diameter = screenWidth/25
    Player = SKSpriteNode(color: .gray, size: CGSize(width: diameter, height: diameter))
    
    Player.texture = SKTexture(imageNamed:"whiteBall")
    
    Player.position = CGPoint(x: 0, y: 0)
    
    
    //player physics'
    Player.physicsBody = SKPhysicsBody(circleOfRadius: diameter / 2)
    
    Player.physicsBody?.categoryBitMask = ColliderType.Player
    Player.physicsBody?.contactTestBitMask = ColliderType.Player | ColliderType.topBorder | ColliderType.bottomBorder | ColliderType.Monster
    Player.physicsBody?.collisionBitMask = ColliderType.topBorder | ColliderType.bottomBorder | ColliderType.leftBorder | ColliderType.rightBorder
    Player.physicsBody?.isDynamic = true
    Player.physicsBody?.affectedByGravity = false
    Player.physicsBody?.angularDamping = 0
    Player.physicsBody?.linearDamping = 0
    Player.physicsBody?.restitution = 1
    Player.physicsBody?.friction = 0
    
    
    self.addChild(Player)
}
