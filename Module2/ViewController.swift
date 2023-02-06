//
//  ViewController.swift
//  Module2
//
//  Created by Тимофей Юдин on 28.01.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet var colorizedView: UIView!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorizedView.layer.cornerRadius = 10
    }
    
    // MARK: IBActions

    @IBAction func redSliderMoved() {
        let sliderValue = round(redSlider.value * 100) / 100
        redLabel.text = sliderValue.formatted()
        
        paintView()
    }
    
    @IBAction func greenSliderMoved() {
        let sliderValue = round(greenSlider.value * 100) / 100
        greenLabel.text = sliderValue.formatted()
        
        paintView()
    }
    
    @IBAction func blueSliderMoved() {
        let sliderValue = round(blueSlider.value * 100) / 100
        blueLabel.text = sliderValue.formatted()
        
        paintView()
    }
    
    // MARK: private methods
    private func paintView() {
        colorizedView.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                                            green: CGFloat(greenSlider.value),
                                            blue: CGFloat(blueSlider.value),
                                            alpha: 1)
    }
    
}

