//
//  pushedController.swift
//  Homework 4.1
//
//  Created by Stas on 27.11.2020.
//

import UIKit

class pushedController: UIViewController {
    var field = ""
    
    @IBOutlet weak var showText: UILabel!
    override func viewDidAppear( _ animating: Bool) {
        super.viewDidAppear(animating)
        self.showText.text = self.field
        self.showText.alpha = 0.0
        UIView.animate(withDuration: 3, delay: 1.5, options: .curveEaseOut, animations:{ self.showText.alpha = 1.0 },completion: nil)
        }
    }

