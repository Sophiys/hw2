//
//  ViewController.swift
//  MyHelloWorld
//
//  Created by София Овчинникова on 15.03.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var redLight: UIView!
    @IBOutlet var yellowLight: UIView!
    @IBOutlet var greenLight: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    private var currentColor = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeRoundedFrame()
    }
    
    
    private func makeRoundedFrame() {
        redLight.layer.cornerRadius = 50
        greenLight.layer.cornerRadius = 50
        yellowLight.layer.cornerRadius = 50
    }
    
    
    @IBAction private func changeColorButton() {
        startButton.setTitle("Next", for: .normal)
        
        if currentColor == 0 || currentColor == 3 {
            redLight.alpha = 1
            yellowLight.alpha = 0.25
            greenLight.alpha = 0.25
            currentColor = 1
        } else if currentColor == 1 {
            redLight.alpha = 0.25
            yellowLight.alpha = 1
            greenLight.alpha = 0.25
            currentColor = 2
        } else if currentColor == 2 {
            redLight.alpha = 0.25
            yellowLight.alpha = 0.25
            greenLight.alpha = 1
            currentColor = 3
        }

        }
        
    }



