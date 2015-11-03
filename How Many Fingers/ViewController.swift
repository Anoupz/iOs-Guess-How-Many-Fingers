//
//  ViewController.swift
//  How Many Fingers
//
//  Created by Anoop Narayanan on 11/2/15.
//  Copyright © 2015 APNApp. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var result: UILabel!
    
    @IBOutlet var userInput: UITextField!
    
    @IBAction func guess(sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(6))
        print(diceRoll)
        
        if( diceRoll == userInput.text){
            result.text = "You were right!!!"
        } else {
            result.text = "Wrong :( It was a " + diceRoll
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

