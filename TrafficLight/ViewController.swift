//
//  ViewController.swift
//  TrafficLight
//
//  Created by Ast on 23.01.2025.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet private var redLightView: UIView!
    @IBOutlet private var yellowLightView: UIView!
    @IBOutlet private var greenLightView: UIView!
    
    @IBOutlet private var lightButton: UIButton!
    
    private var halfSideView: CGFloat! {
        redLightView.frame.width / 2
    }
    
    private var pushLightButtonCounter = 0
    private let lightIsOn = 1.0
    private let lightIsOff = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        lightButton.layer.cornerRadius = 10
    }
    //Для скалирования и понимания реальных р-ров устройства
     override func viewWillLayoutSubviews() {
         redLightView.layer.cornerRadius = halfSideView
         yellowLightView.layer.cornerRadius = halfSideView
         greenLightView.layer.cornerRadius = halfSideView
    }
    @IBAction private func changeLightButton() {
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
// MARK: - Расширение возможностей класса методами
extension ViewController {
    
}

