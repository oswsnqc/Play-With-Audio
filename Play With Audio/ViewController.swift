//
//  ViewController.swift
//  Play With Audio
//
//  Created by Yisen on 6/21/15.
//  Copyright (c) 2015 Yisen. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player:AVAudioPlayer = AVAudioPlayer()

    @IBAction func startToPlay(sender: AnyObject) {
        
        var audioPath = NSBundle.mainBundle().pathForResource("1a1a1", ofType: "mp3")!
        
        var error : NSError? = nil
        
        player = AVAudioPlayer(contentsOfURL: NSURL(fileURLWithPath: audioPath), error: &error)

        if error == nil {
            
            player.play()
            
        } else {
            
            println(error)
            
        }
        
    }
    @IBAction func pauseButton(sender: AnyObject) {
        
        player.pause()
    }
    
    @IBAction func sliderChanged(sender: AnyObject) {
        
        player.volume = sliderValue.value
        
    }
    
    @IBOutlet weak var sliderValue: UISlider!
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

