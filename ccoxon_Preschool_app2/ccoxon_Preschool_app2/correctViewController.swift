//
//  correctViewController.swift
//  ccoxon_Preschool_app2
//
//  Created by Craig Coxon on 28/11/2016.
//  Copyright © 2016 Craig Coxon. All rights reserved.
//

import UIKit

extension UIView {

    func fadeIn(withDuration duration: TimeInterval = 1) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 1.0
        })
    }
    
    func fadeOut(withDuration duration: TimeInterval = 1) {
        UIView.animate(withDuration: duration, animations: {
            self.alpha = 0.1
        })
    }

}

class correctViewController: UIViewController {
    
    @IBOutlet var labelAnswer: UILabel!
    @IBOutlet var labelNo2: UILabel!
    @IBOutlet var labelNo1: UILabel!
    @IBOutlet var labelPlus: UILabel!
    @IBOutlet var labelEquals: UILabel!
    @IBOutlet var star1: UIImageView!
    @IBOutlet var star2: UIImageView!
    @IBOutlet var star3: UIImageView!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        // assign values to on screen labels
        
        labelAnswer.text = String(sumOf)
        labelNo1.text = String(randomNo1)
        labelNo2.text = String(randomNo2)
        
        // format label text
        
        labelAnswer.textColor = UIColor.green
        labelNo1.textColor = UIColor.green
        labelNo2.textColor = UIColor.green
        labelPlus.textColor = UIColor.green
        labelEquals.textColor = UIColor.green
        
        // animate images
        
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        star1.fadeOut()
        star1.fadeIn()
        star2.fadeOut()
        star2.fadeIn()
        star3.fadeOut()
        star3.fadeIn()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

