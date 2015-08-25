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

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        //TODO: Show text that shows Recording in Process
        //TODO: Record User's Voice
        println("in Record Audio")
        if (recordInProcess.hidden == true) {
            recordInProcess.hidden = false
        } else {
            recordInProcess.hidden = true
        }
        
    }

}

