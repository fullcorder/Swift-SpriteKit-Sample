//
//  GameScene.swift
//  SwiftSpriteKitSample
//
//  Created by fullcorder on 2014/06/08.
//  Copyright (c) 2014年 fullcorder. All rights reserved.
//

import SpriteKit

class GameScene: SKScene
{
    
    override func didMoveToView(view: SKView)
    {
        let screenSize : CGSize = UIScreen.mainScreen().bounds.size
        let width : CGFloat = screenSize.width
        let height : CGFloat = screenSize.height
        
        var floor = SKSpriteNode(color : UIColor.greenColor(), size : CGSizeMake(width, 40))
        floor.position = CGPointMake(width/2, floor.size.height/2)
        floor.physicsBody = SKPhysicsBody( rectangleOfSize : floor.size)
        floor.physicsBody.dynamic = false
        addChild(floor)
        
        physicsWorld.gravity = CGVectorMake(0, -6)
    }
    
    override func touchesBegan(touches: NSSet, withEvent event: UIEvent)
    {
        for touch :AnyObject in touches
        {
            let location :CGPoint = touch.locationInNode(self)
            addBoxWithPosition(location);
        }
    }
    
    override func update(currentTime: CFTimeInterval)
    {
    }
    
    override func didSimulatePhysics ()
    {
        
    }
    
    func addBoxWithPosition(position : CGPoint)
    {
        
        var color :UIColor = UIColor(red : CGFloat(drand48()),
            green : CGFloat(drand48()),
            blue : CGFloat(drand48()),
            alpha : 1)
        
        var box :SKSpriteNode = SKSpriteNode(color: color, size:CGSizeMake(40, 40))
        box.position = position
        box.physicsBody = SKPhysicsBody( rectangleOfSize : box.size)
        addChild(box)
    }
    
    
}
