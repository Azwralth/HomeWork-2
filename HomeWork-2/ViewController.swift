//
//  ViewController.swift
//  HomeWork-2
//
//  Created by Владислав Соколов on 25.01.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redView: UIView!
    @IBOutlet var greenView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greetingButton: UIButton!
    
    private var currentColor = "red"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        redView.alpha = 0.3
        yellowView.alpha = 0.3
        greenView.alpha = 0.3
        greetingButton.layer.cornerRadius = 10
        redView.layer.cornerRadius = 75
        yellowView.layer.cornerRadius = 75
        greenView.layer.cornerRadius = 75
    }
    
    @IBAction func changeColor() {
        greetingButton.setTitle("NEXT", for: .normal)
        switch currentColor {
        case "red":
            redView.alpha = 1
            yellowView.alpha = 0.3
            greenView.alpha = 0.3
            currentColor = "yellow"
        case "yellow":
            redView.alpha = 0.3
            yellowView.alpha = 1
            greenView.alpha = 0.3
            currentColor = "green"
        case "green":
            redView.alpha = 0.3
            yellowView.alpha = 0.3
            greenView.alpha = 1
            currentColor = "red"
        default:
            break
        }
    }
}

