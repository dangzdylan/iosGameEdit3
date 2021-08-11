//
//  publicvars.swift
//  dodge2
//
//  Created by Dylan on 8/6/21.
//  Copyright © 2021 S-Crew. All rights reserved.
//
import SpriteKit
import GameplayKit


//screenBounds = UIScreen.main.bounds, screenScale = UIScreen.main.scale, so UIScreen.main.scale = 2x scale
//screen res
public var screenWidth =  UIScreen.main.bounds
.size.width * CGFloat(2)
public var screenHeight = UIScreen.main.bounds
.size.height * CGFloat(2)


//view frame dimension
public let frameWidth = screenWidth / 2
public let frameHeight = screenHeight / 2

//borders
public var topBorder = SKShapeNode()
public var bottomBorder = SKShapeNode()
public var leftBorder = SKShapeNode()
public var rightBorder = SKShapeNode()

//border pos
public  let xPointBorder = frameWidth/2 - screenWidth/30
public let yPointBorder = screenWidth/3


//start labels
public var tapToLabel = SKLabelNode()
public var startLabel = SKLabelNode()
public var gameHasStarted = false
public let labelColor:UIColor = .white

//nodes
public var tempSize = screenWidth/15
public var Player = SKSpriteNode()
public var monsterArray = [SKSpriteNode]()
public var coin = SKSpriteNode()



//bit mask
public struct ColliderType{
    static let Player:UInt32 = 1
    static let topBorder:UInt32 = 2
    static let bottomBorder:UInt32 = 4
    static let rightBorder:UInt32 = 8
    static let leftBorder:UInt32 = 16
    static let Monster:UInt32 = 32
    static let coin: UInt32 = 0
}

//player movement vars
public var goingUp = true
public var goingRight = false
public var playerSpeed = CGVector()

//monster
public let monsterDiameter = screenWidth/23
public let monsterSpeed = monsterDiameter / 7

//score
public var score  = SKLabelNode()
public var scoreNum = 0

//spawner pos
public var spawner1 = SKSpriteNode()
public var spawner2 = SKSpriteNode()
public var spawner3 = SKSpriteNode()
public var spawner4 = SKSpriteNode()


