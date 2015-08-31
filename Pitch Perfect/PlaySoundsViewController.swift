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
    var receivedAudio:RecordedAudio!
    var audioEngine:AVAudioEngine!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        audioEngine = AVAudioEngine()
        
        audioPlayer = AVAudioPlayer(contentsOfURL: receivedAudio.filePathUrl, error: nil)
        audioPlayer.enableRate = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func playSlowSound(sender: UIButton) {
        audioPlayer.rate = 0.5
        playAudio()
    }

    @IBAction func playFastSound(sender: UIButton) {
        audioPlayer.rate = 1.5
        playAudio()
    }
    
    @IBAction func playChipmunkSound(sender: UIButton) {
        playAudioWithVariablePitch(1000)
    }
    @IBAction func playDarthVaderSound(sender: AnyObject) {
        playAudioWithVariablePitch(-1000)
    }
    
    func playAudioWithVariablePitch (pitch: Float) {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        audioEngine.stop()
        audioEngine.reset()
        
        var playbackFile = AVAudioFile(forReading: receivedAudio.filePathUrl, error: nil)
        
        var pitchPlayer = AVAudioPlayerNode()
        var timePitch = AVAudioUnitTimePitch()
        timePitch.pitch = pitch
        
        audioEngine.attachNode(pitchPlayer)
        audioEngine.attachNode(timePitch)
        
        audioEngine.connect(pitchPlayer, to: timePitch, format: playbackFile.processingFormat)
        audioEngine.connect(timePitch, to: audioEngine.outputNode, format: playbackFile.processingFormat)
        
        pitchPlayer.scheduleFile(playbackFile, atTime: nil, completionHandler: nil)
        audioEngine.startAndReturnError(nil)
        pitchPlayer.play()
    }
    
    @IBAction func stopPlaying(sender: UIButton) {
        audioPlayer.stop()
        audioEngine.stop()
        audioEngine.reset()
    }
    
    func playAudio() {
        audioPlayer.stop()
        audioPlayer.currentTime = 0
        audioPlayer.play()
        audioEngine.stop()
        audioEngine.reset()
    }

}
