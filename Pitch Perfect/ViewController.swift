//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by Joshua  Tan on 24/8/15.
//  Copyright (c) 2015 Joshua. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var recordInProcess: UILabel!
    @IBOutlet weak var stopButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        recordInProcess.hidden = true
        stopButton.hidden = true
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        //TODO: Record User's Voice
        recordInProcess.hidden = false
        stopButton.hidden = false
    }

    @IBAction func stopRecording(sender: UIButton) {
        recordInProcess.hidden = true
        stopButton.hidden = true
    }
}

