//
//  ViewController.swift
//  Module2
//
//  Created by Тимофей Юдин on 28.01.2023.
//

import UIKit

class ViewController: UIViewController {
    
    enum Color: Int{
        case red = 0
        case yellow = 1
        case green = 2
    }
    
    private var color: Color = .red
    
    @IBOutlet var startButton: UIButton!
    @IBOutlet var views: [UIView]!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        startButton.layer.cornerRadius = 7
        
        for view in views {
            view.layer.cornerRadius = 50
            view.alpha = 0.3
        }
    }
    
    private func blackout(_ views: [UIView]!){
        for view in views {
            view.alpha = 0.3
        }
    }

    @IBAction func startButtonDidTapped() {
        startButton.setTitle("NEXT", for: .normal)
        
        switch color {
        case .red:
            blackout(views)
            views[color.rawValue].alpha = 1
            color = .yellow
        case .yellow:
            blackout(views)
            views[color.rawValue].alpha = 1
            color = .green
        case .green:
            blackout(views)
            views[color.rawValue].alpha = 1
            color = .red
        }
    }
}

