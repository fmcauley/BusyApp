//
//  MainWindowController.swift
//  BusyApp
//
//  Created by MLS Discovery on 6/30/16.
//  Copyright © 2016 SoftwareSoFast. All rights reserved.
//

import Cocoa

class MainWindowController: NSWindowController {
    
    // Outlets
    
    @IBOutlet weak var sliderStatusText: NSTextField!
    @IBOutlet weak var slider: NSSlider!
    
    @IBAction func resetControls(_ sender: NSButton) {
        
    }
    
    // Actions
    
    @IBAction func sliderState(_ sender: NSSlider) {
        if (sender.integerValue > 50) {
            sliderStatusText.stringValue = "Slider goes up!"
        } else if (sender.integerValue < 50) {
            sliderStatusText.stringValue = "Slider goes down!"
        } else {
            sliderStatusText.stringValue = "Slider stays the same."
        }
    }
    
    @IBAction func toggleTickers(_ sender: NSButton) {
        if sender.tag == 0 {
            slider.numberOfTickMarks = 0
        } else {
            slider.numberOfTickMarks = 9
        }
        
    }
    override func windowDidLoad() {
        super.windowDidLoad()

    }
    
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
}
