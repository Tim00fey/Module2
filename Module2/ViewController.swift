//
//  ViewController.swift
//  Module2
//
//  Created by Тимофей Юдин on 28.01.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    
    @IBOutlet var startButton: UIButton!
    
    private var currentColor: CurrentColor = .red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 7
        
        redView.alpha = lightIsOff
        yellowView.alpha = lightIsOff
        greenView.alpha = lightIsOff
        
        viewWillLayoutSubviews()
    }
    
    override func viewWillLayoutSubviews() {
        redView.layer.cornerRadius = redView.frame.width / 2
        yellowView.layer.cornerRadius = yellowView.frame.width / 2
        greenView.layer.cornerRadius = greenView.frame.width / 2
    }
    
    @IBAction func startButtonTapped() {
        if startButton.currentTitle == "START" {
            startButton.setTitle("NEXT", for: .normal)
        }
        
        switch currentColor {
        case .red:
            currentColor = .yellow
            redView.alpha = lightIsOn
            greenView.alpha = lightIsOff
        case .yellow:
            currentColor = .green
            yellowView.alpha = lightIsOn
            redView.alpha = lightIsOff
        case .green:
            currentColor = .red
            greenView.alpha = lightIsOn
            yellowView.alpha = lightIsOff
        }
    }
}

extension ViewController {
    private enum CurrentColor {
        case red, yellow, green
    }
}

