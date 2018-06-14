//
//  ViewController.swift
//  magiceightball
//
//  Created by Julio Mojica on 6/13/18.
//  Copyright © 2018 Julio Mojica. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var eightBall: UIImageView!
    
    let eightBallAnswers = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallIndex1: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        generateAnswer()
    }

    @IBAction func clickAnswerBtn(_ sender: Any) {
        generateAnswer()
    }
    
    func generateAnswer(){
        
        randomBallIndex1 = Int(arc4random_uniform(5))
        
        eightBall.image = UIImage(named: eightBallAnswers[randomBallIndex1])
    }
    
}

