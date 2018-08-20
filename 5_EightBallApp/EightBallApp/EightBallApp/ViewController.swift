//
//  ViewController.swift
//  EightBallApp
//
//  Created by Niku Piku on 8/19/18.
//  Copyright © 2018 Niku Piku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var answerImageView: UIImageView!
    
    let imageArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
        
        randomAnswer()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        askButtonClicked(0)
    }
    
    @IBAction func askButtonClicked(_ sender: Any)
    {
        randomAnswer()
    }
    
    func randomAnswer() -> (Void)
    {
        let answer : Int = (Int)(arc4random_uniform(5))
        
        answerImageView.image = UIImage(named: imageArray[answer])
        print(answer)
    }
}

