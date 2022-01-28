//
//  ViewController.swift
//  HW2.1.2
//
//  Created by Mikhail Stepanov on 26.01.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var lightIsOn: CGFloat = 1
    private var lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 10
    }

    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.height / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.height / 2
        greenLightView.layer.cornerRadius = greenLightView.frame.height / 2
    }

    @IBAction func startButtonPressed() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        if redLightView.alpha != lightIsOn &&
            yellowLightView.alpha != lightIsOn &&
            greenLightView.alpha != lightIsOn {
            redLightView.alpha = lightIsOn
        } else if redLightView.alpha == lightIsOn {
            redLightView.alpha = lightIsOff
            yellowLightView.alpha = lightIsOn
        } else if yellowLightView.alpha == lightIsOn {
            yellowLightView.alpha = lightIsOff
            greenLightView.alpha = lightIsOn
        } else if greenLightView.alpha == lightIsOn {
            greenLightView.alpha = lightIsOff
            redLightView.alpha = lightIsOn
        }
    }
}

