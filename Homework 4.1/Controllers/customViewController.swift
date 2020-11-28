//
//  customViewController.swift
//  Homework 4.1
//
//  Created by Stas on 27.11.2020.
//

import UIKit

class customViewController: UIViewController {

    @IBOutlet weak var tmpText: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func newscreen(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        guard let VC = storyboard.instantiateViewController(identifier: "customController") as? pushedController else { return }
        if tmpText.text != ""{
            VC.field = tmpText.text!
        }
        else{
            VC.field = "Add text plz"
            
        }
        present(VC, animated: true)
        
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let touch = touches.first as? UITouch?{
            view.endEditing(true)
        }
        super.touchesBegan(touches, with: event)
    }

}
