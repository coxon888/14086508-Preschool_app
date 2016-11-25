//
//  ViewController.swift
//  ccoxon_Preschool_app2
//
//  Created by Craig Coxon on 25/11/2016.
//  Copyright © 2016 Craig Coxon. All rights reserved.
//

import UIKit
import Foundation // used for randomizer

class ViewController: UIViewController {

    // variables
    
    @IBOutlet var labelAnswer: UILabel!
    @IBOutlet var labelNo1: UILabel!
    @IBOutlet var labelNo2: UILabel!
    @IBOutlet var debugSumOf: UILabel!
    var randomNo1 = 0
    var randomNo2 = 0
    var sumOf: Int!
    var debugMode: BooleanLiteralType! = false
    
    // number button presses
    
    @IBAction func zeroPressed(_ sender: Any) {
        labelAnswer.text = "0"
    }
    @IBAction func onePressed(_ sender: Any) {
        labelAnswer.text = "1"
    }
    @IBAction func twoPressed(_ sender: Any) {
        labelAnswer.text = "2"
    }
    @IBAction func threePressed(_ sender: Any) {
        labelAnswer.text = "3"
    }
    @IBAction func fourPressed(_ sender: Any) {
        labelAnswer.text = "4"
    }
    @IBAction func fivePressed(_ sender: Any) {
        labelAnswer.text = "5"
    }
    @IBAction func sixPressed(_ sender: Any) {
        labelAnswer.text = "6"
    }
    @IBAction func sevenPressed(_ sender: Any) {
        labelAnswer.text = "7"
    }
    @IBAction func eightPressed(_ sender: Any) {
        labelAnswer.text = "8"
    }
    @IBAction func ninePressed(_ sender: Any) {
        labelAnswer.text = "9"
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // funtion declarations
        
            // random number generator
        
            func randomiser() -> Int {
                return Int(arc4random_uniform(5))
            }
        
            func addNumbers(no1: Int, no2: Int) -> Int {
                var result: Int
                result = no1 + no2
                return result
            }
        
        
        // assign random numbers
        
            randomNo1 = randomiser()
            randomNo2 = randomiser()
            labelNo1.text = String(randomNo1)
            labelNo2.text = String(randomNo2)
        
        // assign start values
        
            labelAnswer.text = "?"
            sumOf = addNumbers(no1: randomNo1, no2: randomNo2)
            debugSumOf.text = String(sumOf)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

