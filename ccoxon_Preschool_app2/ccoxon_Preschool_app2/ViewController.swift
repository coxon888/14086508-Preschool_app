//
//  ViewController.swift
//  ccoxon_Preschool_app2
//
//  Created by Craig Coxon on 25/11/2016.
//  Copyright © 2016 Craig Coxon. All rights reserved.
//

import UIKit
import Foundation // used for randomizer

// global variables

var randomNo1 = 0
var randomNo2 = 0
var sumOf: Int!

class ViewController: UIViewController {

    // UI outlets
    
    @IBOutlet var labelAnswer: UILabel!
    @IBOutlet var labelNo1: UILabel!
    @IBOutlet var labelNo2: UILabel!
    @IBOutlet var debugSumOf: UILabel!
    @IBOutlet var debugResult: UILabel!
    
    // variables
    
    var debugMode: Bool! = true // debug mode switch
    var isCorrect: Bool!
    
    // function declarations
    
        // compare the user's answer with the correct one, and return the result
    
            func checkAnswer(userAns: Int, correctAns: Int) -> Bool {
                var result: Bool
                if userAns == correctAns {
                    result = true
                    debugResult.text = "Correct"
                    labelAnswer.textColor = UIColor.green
                    usleep(500)
                    self.performSegue(withIdentifier: "correctAnswerChosen", sender: self)
                    return result
                } else {
                    result = false
                    debugResult.text = "Wrong"
                    labelAnswer.textColor = UIColor.red
                    return result
                }
            }

    // number button presses
    

    @IBAction func zeroPressed(_ sender: Any) {
        labelAnswer.text = "0"
        isCorrect = checkAnswer(userAns: 0, correctAns: sumOf)
    }
    @IBAction func onePressed(_ sender: Any) {
        labelAnswer.text = "1"
        isCorrect = checkAnswer(userAns: 1, correctAns: sumOf)
    }
    @IBAction func twoPressed(_ sender: Any) {
        labelAnswer.text = "2"
        isCorrect = checkAnswer(userAns: 2, correctAns: sumOf)
    }
    @IBAction func threePressed(_ sender: Any) {
        labelAnswer.text = "3"
        isCorrect = checkAnswer(userAns: 3, correctAns: sumOf)
    }
    @IBAction func fourPressed(_ sender: Any) {
        labelAnswer.text = "4"
        isCorrect = checkAnswer(userAns: 4, correctAns: sumOf)
    }
    @IBAction func fivePressed(_ sender: Any) {
        labelAnswer.text = "5"
        isCorrect = checkAnswer(userAns: 5, correctAns: sumOf)
    }
    @IBAction func sixPressed(_ sender: Any) {
        labelAnswer.text = "6"
        isCorrect = checkAnswer(userAns: 6, correctAns: sumOf)
    }
    @IBAction func sevenPressed(_ sender: Any) {
        labelAnswer.text = "7"
        isCorrect = checkAnswer(userAns: 7, correctAns: sumOf)
    }
    @IBAction func eightPressed(_ sender: Any) {
        labelAnswer.text = "8"
        isCorrect = checkAnswer(userAns: 8, correctAns: sumOf)
    }
    @IBAction func ninePressed(_ sender: Any) {
        labelAnswer.text = "9"
        isCorrect = checkAnswer(userAns: 9, correctAns: sumOf)
    }
    
    // moving the apples
    
    @IBAction func handlePan(recognizer:UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self.view)
        if let view = recognizer.view {
            view.center = CGPoint(x:view.center.x + translation.x,y:view.center.y + translation.y)
        }
        recognizer.setTranslation(CGPoint(), in: self.view)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // function declarations
        
            // random number generator (between 1-4)
        
            func randomiser() -> Int {
                return Int(arc4random_uniform(5))
            }
        
            // add two integers together and return result
        
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
            if debugMode == true {
                debugSumOf.text = String(sumOf)
            }   else {
                debugSumOf.text = ""
            }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

