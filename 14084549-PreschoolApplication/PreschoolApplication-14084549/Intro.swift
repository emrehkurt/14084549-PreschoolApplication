//
//  Intro.swift
//  PreschoolApplication-14084549
//
//  Created by ek12aaa on 22/03/2017.
//  Copyright © 2017 ek12aaa. All rights reserved.
//

import UIKit
import AVFoundation

class Intro: UIViewController {
    var audioPlayer : AVAudioPlayer?
    
    func playMainSound() {
        let url = NSBundle.mainBundle().URLForResource("Main", withExtension: "mp3")!
        
        do {
            audioPlayer = try AVAudioPlayer(contentsOfURL: url)
            guard let player = audioPlayer else { return }
            
            player.prepareToPlay()
            player.play()
        } catch let error as NSError {
            print(error.description)
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        playMainSound()

        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
