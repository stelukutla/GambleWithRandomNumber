//
//  ViewController.swift
//  GambleWithRandomNumber
//
//  Created by SANKARA TELUKUTLA on 10/12/15.
//  Copyright © 2015 SANKARA TELUKUTLA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberField: UITextField!
    
    
    @IBOutlet var resultLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func guessButton(sender: AnyObject) {
        
       let diceRoll = Int(arc4random_uniform(7))
        
        if Int(numberField.text!) == diceRoll {
            resultLabel.text = "You WON !!!!!!!!!!!!!!!!!"
        }
        else{
            resultLabel.text = "Good luck next time :("
        }
        
    }

}

