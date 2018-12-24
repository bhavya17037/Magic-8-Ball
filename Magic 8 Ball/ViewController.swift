//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Bhavya  Srivastava on 24/12/18.
//  Copyright © 2018 Bhavya Srivastava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ball: UIImageView!
    
    let ballArray : [String] = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomIndex : Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        changeResponse()
        // Dispose of any resources that can be recreated.
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        changeResponse()
    }
    
    @IBAction func askButton(_ sender: UIButton) {
        changeResponse()
    }
    
    func changeResponse(){
        randomIndex = Int(arc4random_uniform(5))
        ball.image = UIImage(named: ballArray[randomIndex])
    }
    
}

