//
//  ViewController.swift
//  PreschoolApplication-14084549
//
//  Created by ek12aaa on 05/03/2017.
//  Copyright © 2017 ek12aaa. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var result : Int = 0
    var Random1 = 0
    var Random2 = 0
    var audioPlayer : AVAudioPlayer?
    
    @IBOutlet weak var star: UIImageView!
    @IBOutlet weak var star1: UIImageView!
    @IBOutlet weak var star2: UIImageView!
    @IBOutlet weak var Arrow: UIImageView!

    @IBOutlet weak var secondPage: UIView!
   
    @IBOutlet weak var A: UILabel!
    @IBOutlet weak var B: UILabel!
    @IBOutlet weak var C: UILabel!
    @IBOutlet weak var secondA: UILabel!
    
    @IBOutlet weak var secondC: UILabel!
    @IBOutlet weak var secondB: UILabel!
    @IBAction func Zero(sender: UIButton) {
 
        result = 0
        C.text = String(result)
        checkAnswer()
    }
    
    @IBAction func One(sender: UIButton) {
        result = 1
        C.text = String(result)
        checkAnswer()
    }
    
    @IBAction func Two(sender: UIButton) {
  
        result = 2
        C.text = String(result)
        checkAnswer()
    }
    
    @IBAction func Three(sender: UIButton) {
    
        result = 3
        C.text = String(result)
        checkAnswer()
    }
    
    @IBAction func Four(sender: UIButton) {
        
        result = 4
        C.text = String(result)
        checkAnswer()
    }
    
    @IBAction func Five(sender: UIButton) {

        result = 5
        C.text = String(result)
        checkAnswer()
    }
    
    @IBAction func Six(sender: UIButton) {
    
        result = 6
        C.text = String(result)
        checkAnswer()
    }
    
    @IBAction func Seven(sender: UIButton) {
    
        result = 7
        C.text = String(result)
        checkAnswer()
    }
    
    @IBAction func Eight(sender: UIButton) {
    
        result = 8
        C.text = String(result)
        checkAnswer()
    }
    
    @IBAction func Nine(sender: UIButton) {
    
        result = 9
        C.text = String(result)
        checkAnswer()

    }
    
    
    
    func checkAnswer(){
        if ((Random1 + Random2) == result){
            secondC.text = String(result)
        secondPage.hidden = false
            print("Correct")
            playSound()
            animateArrow()
            starAnimation()
        }else{
            print("Wrong")
            animateEqualtion()
        }
    }
    
    func animateEqualtion(){
        A.textColor = UIColor.redColor()
        B.textColor = UIColor.redColor()
        C.textColor = UIColor.redColor()
        UIView.animateWithDuration(1, delay: 0.3, options: [.CurveEaseOut, .Autoreverse, .Repeat], animations: {
            self.A.alpha = 1
            self.A.alpha = 0.1
            self.B.alpha = 1
            self.B.alpha = 0.1
            self.C.alpha = 1
            self.C.alpha = 0.1
            }, completion: nil)
    }
    
    func animateArrow(){
        UIView.animateWithDuration(1, delay: 0.3, options: [.CurveEaseOut, .Autoreverse, .Repeat], animations: {
            self.star.transform = CGAffineTransformMakeRotation(360)
            self.star1.transform = CGAffineTransformMakeRotation(360)
            self.star2.transform = CGAffineTransformMakeRotation(360)
           
            }, completion: nil)
    }
    
    func playSound() {
        let url = NSBundle.mainBundle().URLForResource("applause", withExtension: "wav")!
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: url)
            guard let player = audioPlayer else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
    }
    

    
    func starAnimation(){
        UIView.animateWithDuration(1, delay: 0.3, options: [.CurveEaseOut, .Autoreverse, .Repeat], animations: {
            self.star.alpha = 1
            self.star.alpha = 0.1
            self.star1.alpha = 1
            self.star1.alpha = 0.1
            self.star2.alpha = 1
            self.star2.alpha = 0.1
            self.Arrow.alpha = 1
            self.Arrow.alpha = 0.1
            }, completion: nil)

        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Random1 = Int(arc4random_uniform(6))
        Random2 = Int(arc4random_uniform(3))
        A.text = String(Random1)
        B.text = String(Random2)
        secondA.text = String(Random1)
        secondB.text = String(Random2)
        secondPage.hidden = true
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }


}

