//
//  ViewController.swift
//  TrafficLight
//
//  Created by Ast on 23.01.2025.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var lightButton: UIButton!
    
    private var pushLightButtonCounter = 0
    private var lightIsOn = 1.0
    private var lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Start Mode View
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        
        redLightView.alpha = lightIsOff
        yellowLightView.alpha = lightIsOff
        greenLightView.alpha = lightIsOff
        
        lightButton.setTitle("START", for: .normal)
        lightButton.layer.cornerRadius = 10
    }
    
    @IBAction func changeLightButton(_ sender: UIButton) {
        
        pushLightButtonCounter += 1
        
        switch pushLightButtonCounter {
            
        // Only Red Light On
        case 1: redLightView.alpha = lightIsOn
                yellowLightView.alpha = lightIsOff
                greenLightView.alpha = lightIsOff
                lightButton.setTitle("NEXT", for: .normal)
            
        // Only Yellow Light On
        case 2: yellowLightView.alpha = lightIsOn
                redLightView.alpha = lightIsOff
                greenLightView.alpha = lightIsOff
            
        // Only Green Light On
        default: greenLightView.alpha = lightIsOn
                redLightView.alpha = lightIsOff
                yellowLightView.alpha = lightIsOff
            
        // To Re-start Counter
                pushLightButtonCounter = 0
        }
    }
}

