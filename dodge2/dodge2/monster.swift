//
//  monster.swift
//  dodge2
//
//  Created by Dylan on 8/2/21.
//  Copyright © 2021 S-Crew. All rights reserved.
//

import SpriteKit
import GameplayKit


func spawnMonster(self:GameScene){
    

    let Monster = SKSpriteNode(color: .blue, size: CGSize(width: monsterDiameter, height: monsterDiameter))
    Monster.texture = SKTexture(imageNamed:"redBall")
    
    monsterArray.append(Monster)
    
    
    //monster physic body info
    Monster.physicsBody = SKPhysicsBody(circleOfRadius: monsterDiameter / 2)
    Monster.physicsBody?.restitution = 1
    Monster.physicsBody?.friction = 0
    Monster.physicsBody?.isDynamic = true
    Monster.physicsBody?.categoryBitMask = ColliderType.Monster
    Monster.physicsBody?.collisionBitMask = ColliderType.topBorder | ColliderType.bottomBorder | ColliderType.leftBorder | ColliderType.rightBorder | ColliderType.Player
    Monster.physicsBody?.contactTestBitMask = ColliderType.topBorder | ColliderType.bottomBorder | ColliderType.leftBorder | ColliderType.rightBorder | ColliderType.Player
    Monster.physicsBody?.linearDamping = 0
    Monster.physicsBody?.angularDamping = 0
    Monster.physicsBody?.affectedByGravity = false
    

    
    // position
    let spawnerArr = [spawner1, spawner2, spawner3, spawner4]
    let spawnPoint = spawnerArr.randomElement()
    
    Monster.position = spawnPoint!.position
    
    //impulse
    var monsterSpeedArr = [-monsterSpeed, -monsterSpeed]
    if spawnPoint!.position.x < 0{
        monsterSpeedArr[0] *= -1
    }
    if spawnPoint!.position.y < 0{
        monsterSpeedArr[1] *= -1
    }
    Monster.zPosition = spawnPoint!.zPosition + 1
    self.addChild(Monster)
    
    Timer.scheduledTimer(withTimeInterval: 2, repeats: false){timer in
        Monster.physicsBody?.applyImpulse(CGVector(dx: monsterSpeedArr[0], dy: monsterSpeedArr[1]))
    }

    
}





func addSpawner(self:GameScene){
    //vars
    let spawnerColor:UIColor = .blue
    let spawnerSize = Player.size
    let spawnerTexture = SKTexture(imageNamed: "grayBall")
    
    //node dec
    spawner1 = SKSpriteNode(color: spawnerColor, size: spawnerSize)
    spawner2 = SKSpriteNode(color: spawnerColor, size: spawnerSize)
    spawner3 = SKSpriteNode(color: spawnerColor, size: spawnerSize)
    spawner4 = SKSpriteNode(color: spawnerColor, size: spawnerSize)

    //texture
    spawner1.texture = spawnerTexture
    spawner2.texture = spawnerTexture
    spawner3.texture = spawnerTexture
    spawner4.texture = spawnerTexture
    
    //xy coord
    let space = spawner1.size.width/2 + screenHeight/300
    let zpos:CGFloat = -9
    spawner1.position = CGPoint(x: xPointBorder - space, y: yPointBorder - space)
    spawner2.position = CGPoint(x: -xPointBorder + space, y: yPointBorder - space)
    spawner3.position = CGPoint(x: -xPointBorder + space, y: -yPointBorder + space)
    spawner4.position = CGPoint(x: xPointBorder - space, y: -yPointBorder + space)
    
    //z coord
    spawner1.zPosition = zpos
    spawner2.zPosition = zpos
    spawner3.zPosition = zpos
    spawner4.zPosition = zpos
    
    //add to scene
    self.addChild(spawner1)
    self.addChild(spawner2)
    self.addChild(spawner3)
    self.addChild(spawner4)
}


