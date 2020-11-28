//
//  thirdController.swift
//  Homework 4.1
//
//  Created by Stas on 28.11.2020.
//

import UIKit

class thirdController: UIViewController {
    
    @IBOutlet weak var firstView: UIView!
    
    @IBOutlet weak var secondView: UIView!
    
    @IBOutlet weak var thirdView: UIView!
    
    @IBOutlet weak var rightConstr: NSLayoutConstraint!
    
    var isFlipped = true
    var param1 = true
    var param2 = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func onetap(_ sender: Any) {
        
        UIView.transition(
            from: isFlipped ? firstView : secondView,
            to: isFlipped ? secondView : firstView,
            duration: 1,
            options: [.transitionFlipFromTop, .showHideTransitionViews]){_ in
            self.isFlipped.toggle()
        }
        
    }
    
    
    
    @IBAction func tap2(_ sender: Any) {
        
        if param1 == true{
            rightConstr.constant = 22
        }
        else if param1 == false{
            rightConstr.constant = 87
        }
        if param2 == true{
            thirdView.backgroundColor = .brown
        }
        else if param2 == false{
            thirdView.backgroundColor = .green
        }
        
        UIView.animate(
            withDuration: 2){
            self.view.layoutIfNeeded()
        }
        self.param1.toggle()
        self.param2.toggle()
    
    }
    
    

}
