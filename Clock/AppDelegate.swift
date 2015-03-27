//
//  AppDelegate.swift
//  Clock
//
//  Created by Hendrik Noeller on 27.03.15.
//  Copyright (c) 2015 Hendrik Noeller. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate, NSWindowDelegate {

    @IBOutlet weak var textLabel: NSTextField!
    @IBOutlet weak var window: NSWindow!
    var timer : NSTimer?
    var formatter : NSDateFormatter?


    func applicationDidFinishLaunching(aNotification: NSNotification) {
        textLabel.alphaValue = 0.85;
        timer = NSTimer.scheduledTimerWithTimeInterval(1.0, target: self, selector: Selector("tick"), userInfo: nil, repeats: true)
        formatter = NSDateFormatter()
        formatter?.dateFormat = "HH:mm:ss"
        tick()
    }

    func applicationWillTerminate(aNotification: NSNotification) {
        // Insert code here to tear down your application
    }
    
    func tick() {
        if let dateString = formatter?.stringFromDate(NSDate()) {
            textLabel.stringValue = dateString
        }
    }
    
    func windowWillClose(notification: NSNotification) {
        exit(0)
    }

}

