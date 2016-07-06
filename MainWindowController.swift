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
    @IBOutlet weak var showTickMarks: NSButton!
    @IBOutlet weak var secrectMessage: NSSecureTextField!
    @IBOutlet weak var revealedMessage: NSTextField!
    @IBOutlet weak var checkBox: NSButton!
    @IBOutlet weak var sliderWithOutTickMarks: NSButton!
    // Actions
    
    @IBAction func revelTheMessage(_ sender: NSButton) {
        if secrectMessage.stringValue.characters.count > 0 {
            revealedMessage.stringValue = secrectMessage.stringValue
        }
    }
    
    @IBAction func resetControls(_ sender: NSButton) {
        secrectMessage.stringValue = ""
        revealedMessage.stringValue = ""
        checkBox.state = NSOnState
        slider.integerValue = 50
        slider.numberOfTickMarks = 9
        sliderWithOutTickMarks.state = NSOnState
        sliderStatusText.stringValue = "Slider stays the same."
    }
    
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
            slider.numberOfTickMarks = 9
        } else {
            slider.numberOfTickMarks = 0
        }
        
    }
    
    @IBAction func checkME(_ sender: NSButton) {
        if (sender.state == NSOnState) {
            sender.title = "Uncheck me"
        } else {
            sender.title = "Check me"
        }
        
    }
    
    override func windowWillLoad() {
        super.windowWillLoad()
        
    }
    
    override func windowDidLoad() {
        super.windowDidLoad()
         slider.numberOfTickMarks = 9

    }
        
    override var windowNibName: String? {
        return "MainWindowController"
    }
    
}
