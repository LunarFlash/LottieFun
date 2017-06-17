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
        
        if let animationView = LOTAnimationView(name: "servishero_loading") {
            animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
            animationView.center = self.view.center
            animationView.contentMode = .scaleAspectFill
            view.addSubview(animationView)
            animationView.play()
        }
    }



}

