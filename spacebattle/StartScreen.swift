//
//  StartScreen.swift
//  spacebattle
//
//  Created by Horváth Donát on 2019. 08. 30..
//  Copyright © 2019. Horváth Donát. All rights reserved.
//

import Foundation
import SpriteKit

class StartScreen: SKScene {
    
    let startGame = SKLabelNode(fontNamed: "The Bold Font")
    
    override func didMove(to view: SKView) {
        
        let background = SKSpriteNode(imageNamed: "background")
        background.position = CGPoint(x: self.size.width / 2, y: self.size.height/2)
        background.zPosition = 0
        self.addChild(background)
        
        let title1 = SKLabelNode(fontNamed: "The Bold Font")
        title1.text = "Galactic"
        title1.fontSize = 200
        title1.fontColor = SKColor.white
        title1.position = CGPoint(x: self.size.width * 0.45, y: self.size.height * 0.75)
        title1.zPosition = 1
        self.addChild(title1)
        
        let title2 = SKLabelNode(fontNamed: "The Bold Font")
        title2.text = "Battle"
        title2.fontSize = 200
        title2.fontColor = SKColor.white
        title2.position = CGPoint(x: self.size.width * 0.6, y: self.size.height * 0.675)
        title2.zPosition = 1
        self.addChild(title2)
        
        let credit = SKLabelNode(fontNamed: "The Bold Font")
        credit.text = "by Horvath Donat"
        credit.fontSize = 40
        credit.fontColor = SKColor.white
        credit.position = CGPoint(x: self.size.width * 0.51, y: self.size.height * 0.65)
        credit.zPosition = 1
        self.addChild(credit)
        
        startGame.name = "startButton"
        startGame.text = "Start Game"
        startGame.fontSize = 125
        startGame.fontColor = SKColor.white
        startGame.position = CGPoint(x: self.size.width / 2, y: self.size.height * 0.3)
        startGame.zPosition = 1
        self.addChild(startGame)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for touch: AnyObject in touches {
            
            let touchPoint = touch.location(in: self)
            
            if startGame.contains(touchPoint) {
                let moveToScene = GameScene(size: self.size)
                moveToScene.scaleMode = self.scaleMode
                let startTransition = SKTransition.fade(withDuration: 0.5)
                self.view!.presentScene(moveToScene, transition: startTransition)
            }
        }
    }
}
