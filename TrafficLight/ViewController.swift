//
//  ViewController.swift
//  TrafficLight
//
//  Created by Stefan Iurin on 03.11.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redView: UIView!
    @IBOutlet var yellowView: UIView!
    @IBOutlet var greenView: UIView!
    
    @IBOutlet var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redView.alpha = 0.5
        yellowView.alpha = 0.5
        greenView.alpha = 0.5
        
        startButton.layer.cornerRadius = 20
    }
    
    override func viewWillLayoutSubviews() {
        setRadius(redView)
        setRadius(yellowView)
        setRadius(greenView)
    }

    @IBAction func startButtonDidPattep() {
        if redView.alpha == 1 {
            redView.alpha = 0.5
            yellowView.alpha = 1
        } else if yellowView.alpha == 1 {
            yellowView.alpha = 0.5
            greenView.alpha = 1
        } else if greenView.alpha == 1 {
            greenView.alpha = 0.5
            redView.alpha = 1
        } else {
            redView.alpha = 1
            startButton.setTitle("NEXT", for: .normal)
        }
    }
    
    private func setRadius(_ view: UIView!) {
        view.layer.cornerRadius = view.frame.height / 2.0
    }
}

