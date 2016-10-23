//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Derrick  Cornell on 10/22/16.
//  Copyright © 2016 Cornell Industries. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var imageView: UIImageView!
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    var randomBallNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        newBAllImage()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func newBAllImage() {
        
        randomBallNumber = Int(arc4random_uniform(5))
        imageView.image = UIImage(named : ballArray[randomBallNumber])

    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBAllImage()
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?) {
        newBAllImage()
    }
    
}

