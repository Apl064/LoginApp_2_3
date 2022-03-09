//
//  WelcomeViewController.swift
//  LoginApp_2_3
//
//  Created by Pavel Metelin on 3/9/22.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var handLabel: UILabel!
    
    var welcomeText: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        welcomeLabel.text = welcomeText
        handLabel.text = "👋🏻"
    }
    
}
