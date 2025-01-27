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
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()

        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.width / 2
        
        lightButton.layer.cornerRadius = 10
    }
    
    @IBAction func changeLightButton(_ sender: UIButton) {
        pushLightButtonCounter += 1
        if lightButton.currentTitle != "NEXT" {
            lightButton.setTitle("NEXT", for: .normal)
        }
        
        switch pushLightButtonCounter {
        case 1: redLightView.alpha = lightIsOn
                //yellowLightView.alpha = lightIsOff
                greenLightView.alpha = lightIsOff
        case 2: yellowLightView.alpha = lightIsOn
                redLightView.alpha = lightIsOff
                //greenLightView.alpha = lightIsOff
        default: greenLightView.alpha = lightIsOn
                //redLightView.alpha = lightIsOff
                yellowLightView.alpha = lightIsOff
                pushLightButtonCounter = 0
        }
    }
}

