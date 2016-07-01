//
//  MainWindowController.swift
//  BusyApp
//
//  Created by MLS Discovery on 6/30/16.
//  Copyright © 2016 SoftwareSoFast. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    
    @IBOutlet weak var sliderStatusText: NSTextFieldCell!
    @IBOutlet weak var slider: NSSlider!
    
    @IBAction func resetControls(_ sender: NSButton) {
    }
    
    @IBAction func sliderState(_ sender: NSSlider) {
        print("The state of the slider \(sender.integerValue)")
    }
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
}
