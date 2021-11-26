//
//  ViewController.swift
//  AnimationApp
//
//  Created by Dinar Garaev on 26.11.2021.
//

import Spring

class ViewController: UIViewController {

    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var nameAnimationLabel: UILabel!
    @IBOutlet var runAnimationButton: SpringButton!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        springAnimationView.layer.cornerRadius = 15
        runAnimationButton.layer.cornerRadius = 10
    }

    @IBAction func runAnimationButtonAction(_ sender: SpringButton) {
        nameAnimationLabel.text = animation.name
        
        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.duration = 1
        springAnimationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
}

