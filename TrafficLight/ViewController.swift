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
    
    private var pushLightButtonCount = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
        
        redLightView.alpha = 0.2
        yellowLightView.alpha = 0.2
        greenLightView.alpha = 0.2
    }
    
    @IBAction func changeLightButton(_ sender: UIButton) {
        
        pushLightButtonCount += 1
        
        switch pushLightButtonCount{
            
        case 1: redLightView.alpha = 1.0
            yellowLightView.alpha = 0.2
            greenLightView.alpha = 0.2
            lightButton.setTitle("Next", for: .normal)
            
        case 2: yellowLightView.alpha = 1.0
            redLightView.alpha = 0.2
            greenLightView.alpha = 0.2
            
        default: greenLightView.alpha = 1.0
            redLightView.alpha = 0.2
            yellowLightView.alpha = 0.2
            pushLightButtonCount = 0
        }
    }
}

