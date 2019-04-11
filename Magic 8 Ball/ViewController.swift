//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Emin Allahverdiyev on 11/24/18.
//  Copyright © 2018 Emin Allahverdiyev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var randomballIntex : Int = 0
    
    let ballArray = ["ball1", "ball2","ball3","ball4", "ball5"]
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func askBall(_ sender: UIButton) {
        showAnswer()
    }
    func showAnswer(){
        
        randomballIntex = Int(arc4random_uniform(4))
        
        ballImageView.image=UIImage(named: ballArray[randomballIntex])
        
    }
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        showAnswer()
    }
}

