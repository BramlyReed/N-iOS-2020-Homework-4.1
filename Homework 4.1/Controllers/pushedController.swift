//
//  pushedController.swift
//  Homework 4.1
//
//  Created by Stas on 27.11.2020.
//

import UIKit

class pushedController: UIViewController {

    @IBOutlet weak var showText: UILabel!
    var field = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        showText.text = field
    }
    

}
