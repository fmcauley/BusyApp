//
//  MainWindowController.swift
//  BusyApp
//
//  Created by MLS Discovery on 6/30/16.
//  Copyright © 2016 SoftwareSoFast. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    
    @IBOutlet weak var sliderStatusText: NSTextField!
    @IBOutlet weak var slider: NSSlider!
    
    @IBAction func resetControls(_ sender: NSButton) {
    }
    
    @IBAction func sliderState(_ sender: NSSlider) {
        if (sender.integerValue > 50) {
            sliderStatusText.stringValue = "Slider goes up!"
        } else if (sender.integerValue < 50) {
            sliderStatusText.stringValue = "Slider goes down!"
        } else {
            sliderStatusText.stringValue = "Slider stays the same"
        }
    }
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
}
