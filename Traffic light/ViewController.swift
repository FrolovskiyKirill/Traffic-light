//
//  ViewController.swift
//  Traffic light
//
//  Created by Кирилл on 01.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet weak var startButton: UIButton!
    
    var counter = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        
        redLight.alpha = 0.3
        yellowLight.alpha = 0.3
        greenLight.alpha = 0.3
        
        startButton.configuration = setupButton(with: "START")
    }
    
    @IBAction func startButtonPressed() {
        switch counter {
        case 0:
            redLight.alpha = 1
            greenLight.alpha = 0.3
            counter += 1
        case 1:
            yellowLight.alpha = 1
            redLight.alpha = 0.3
            counter += 1
        default:
            greenLight.alpha = 1
            yellowLight.alpha = 0.3
            counter = 0
        }
        startButton.configuration = setupButton(with: "NEXT")
    }
    
    private func setupButton(with title: String) -> UIButton.Configuration {
        var buttonConfiguration = UIButton.Configuration.filled()
        buttonConfiguration.baseBackgroundColor = #colorLiteral(red: 0, green: 0.7818641663, blue: 1, alpha: 1)
        buttonConfiguration.title = title
        buttonConfiguration.buttonSize = .large
        buttonConfiguration.attributedTitle?.font = UIFont.systemFont(ofSize: 24)
        buttonConfiguration.cornerStyle = .medium
        return buttonConfiguration
    }
    
    
}


