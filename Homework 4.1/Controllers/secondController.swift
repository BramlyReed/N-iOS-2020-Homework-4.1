//
//  secondController.swift
//  Homework 4.1
//
//  Created by Stas on 28.11.2020.
//

import UIKit

class secondController: UIViewController {

    
    @IBOutlet weak var tmpv: UIView!
    @IBOutlet weak var topConstraint: NSLayoutConstraint!
    
    var cstrTop: Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func series(_ sender: Any) {
        
        
        UIView.animate(
            withDuration: 2,
            delay: 0,
            usingSpringWithDamping: 0.5,
            initialSpringVelocity: 0,
            options: .curveEaseInOut)
        {
            self.topConstraint.constant = 30
            self.view.layoutIfNeeded()
        }
        
        UIView.animate(
            withDuration: 4,
            delay: 3,
            usingSpringWithDamping: 0.5,
            initialSpringVelocity: 0,
            options: .curveEaseInOut)
        {
          
            self.topConstraint.constant = 120
            self.tmpv.backgroundColor = .yellow
            self.view.layoutIfNeeded()
        }
        
        
        UIView.animate(
            withDuration: 3,
            delay: 8,
            usingSpringWithDamping: 0.2,
            initialSpringVelocity: 0,
            options: .curveEaseInOut)
        {
            self.topConstraint.constant = 270
            self.tmpv.backgroundColor = .white
            self.view.layoutIfNeeded()
        }
        
    }
    
}
