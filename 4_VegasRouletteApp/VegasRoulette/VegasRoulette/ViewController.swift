//
//  ViewController.swift
//  VegasRoulette
//
//  Created by Niku Piku on 8/2/18.
//  Copyright © 2018 Niku Piku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var leftDiceRandomValue: Int = 0;
    var rightDiceRandomValue: Int = 0;
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"];
    
    @IBOutlet weak var leftDiceImageView: UIImageView!
    @IBOutlet weak var rightDiceImageView: UIImageView!
    
    /////////////////////////////  Startup code ////////////////////////////
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // We want a random dice face when we start the app
        updateDiceImages()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    ////////////////////////////// User Actions //////////////////////////////
    @IBAction func rollButtonPressed(_ sender: Any)
    {
        updateDiceImages();
    }
    
    // Shake gesture == hitting "Roll" button
    override func motionEnded(_ motion: UIEventSubtype, with event: UIEvent?)
    {
        rollButtonPressed(0)
        // Or rollButtonPressed([]) but cannot send arg nil like this: rollButtonPressed(nil)
    }
    
    ////////////////////////////// Other methods //////////////////////////////
    func updateDiceImages() -> Void
    {
        //Casted // This creates random generator from 0 to 5
        leftDiceRandomValue = Int(arc4random_uniform(6));
        rightDiceRandomValue = Int(arc4random_uniform(6));
        
        print(leftDiceRandomValue, rightDiceRandomValue);
        
        leftDiceImageView.image = UIImage(named: diceArray[leftDiceRandomValue]);
        rightDiceImageView.image = UIImage(named: diceArray[rightDiceRandomValue]);
    }
}

