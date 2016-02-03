//
//  ViewController.swift
//  Pitch Perfect
//
//  Created by William Lin on 2/2/16.
//  Copyright © 2016 William Lin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var recordingInProgress: UILabel!
    
    @IBOutlet weak var showStop: UIButton!
    
    @IBOutlet weak var recordingProgress: UIActivityIndicatorView!
    
    override func viewWillAppear(animated: Bool) {
        showStop.hidden = true;
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func recordAudio(sender: UIButton) {
        recordingInProgress.hidden = false
        showStop.hidden = false
        recordingProgress.startAnimating()
        //TODO: Record Audio
    }
    
    @IBAction func stopRecord(sender: UIButton) {
        recordingInProgress.hidden = true
        showStop.hidden = true
        recordingProgress.stopAnimating()
    }

}

