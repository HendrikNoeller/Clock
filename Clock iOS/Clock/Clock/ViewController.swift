//
//  ViewController.swift
//  Clock
//
//  Created by Hendrik Noeller on 29.03.15.
//  Copyright (c) 2015 Hendrik Noeller. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UILabel!
    var timer : NSTimer?
    var formatter : NSDateFormatter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textLabel.numberOfLines = 1;
        textLabel.adjustsFontSizeToFitWidth = true;

        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("tick"), userInfo: nil, repeats: true)
        formatter = NSDateFormatter()
        formatter?.dateFormat = "HH:mm:ss"
        tick()
    }
    
    func tick() {
        if let dateString = formatter?.stringFromDate(NSDate()) {
            textLabel.text = dateString
        }
    }

}

