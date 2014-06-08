//
//  GameViewController.swift
//  SwiftSpriteKitSample
//
//  Created by fullcorder on 2014/06/08.
//  Copyright (c) 2014年 fullcorder. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var skView : SKView = view as SKView
        if !skView.scene
        {
            var size : CGSize = UIScreen.mainScreen().bounds.size
            var skScene : SKScene = GameScene.sceneWithSize(size)
            
            skView.presentScene(skScene)
        }
        
    }
    
    override func shouldAutorotate() -> Bool {
        return true
    }
    
    override func supportedInterfaceOrientations() -> Int {
        if UIDevice.currentDevice().userInterfaceIdiom == .Phone {
            return Int(UIInterfaceOrientationMask.AllButUpsideDown.toRaw())
        } else {
            return Int(UIInterfaceOrientationMask.All.toRaw())
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Release any cached data, images, etc that aren't in use.
    }
    
}
