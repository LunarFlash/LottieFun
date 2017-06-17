//
//  ViewController.swift
//  LottieFun
//
//  Created by Yi Wang on 6/17/17.
//  Copyright © 2017 Vento. All rights reserved.
//

import UIKit
import Lottie

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let animationView = LOTAnimationView(contentsOf: URL(string: "https://www.lottiefiles.com/storage/datafiles/9kxERcG6bTQG5RR/data.json")!) {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            animationView.contentMode = .scaleAspectFill
            view.addSubview(animationView)
            animationView.loopAnimation = true
            animationView.animationSpeed = 0.5
            
            let rotateTransform = CGAffineTransform(rotationAngle: 45.0)
            animationView.transform = rotateTransform
            
            // Applying UIView animation
            let minimizeTransform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            animationView.transform = minimizeTransform
            UIView.animate(withDuration: 3.0, delay: 0.0, options: [.repeat, .autoreverse], animations: {
                animationView.transform = CGAffineTransform.identity
            }, completion: nil)
            
            
            animationView.play()
        }
    }



}

