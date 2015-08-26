//
//  PlaySoundsViewController.swift
//  Pitch Perfect
//
//  Created by Joshua  Tan on 26/8/15.
//  Copyright (c) 2015 Joshua. All rights reserved.
//

import UIKit
import AVFoundation



class PlaySoundsViewController: UIViewController {
    
    var audioPlayer:AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if var filePath = NSBundle.mainBundle().pathForResource("movie_quote", ofType: "mp3") {
            var url = NSURL.fileURLWithPath(filePath)
            audioPlayer = AVAudioPlayer(contentsOfURL: url, error: nil)
            audioPlayer.enableRate = true
        } else {
            println("Invalid File Path")
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func playSlowSound(sender: UIButton) {
        audioPlayer.rate = 0.5
        playAudio()
    }

    @IBAction func playFastSound(sender: UIButton) {
        audioPlayer.rate = 1.5
        playAudio()
    }
    
    @IBAction func stopPlaying(sender: UIButton) {
        audioPlayer.stop()
    }
    
    func playAudio() {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        audioPlayer.play()
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
