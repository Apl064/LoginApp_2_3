//
//  AboutViewController.swift
//  LoginApp_2_3
//
//  Created by Pavel Metelin on 3/13/22.
//

import UIKit

class AboutViewController: UIViewController {
        
    var user: User!
        
    private let primaryColor = UIColor(
            red: 17/255,
            green: 142/255,
            blue: 233/255,
            alpha: 1
        )
        
        private let secondaryColor = UIColor(
            red: 225/255,
            green: 161/255,
            blue: 161/255,
            alpha: 0.5
        )
        
        override func viewDidLoad() {
            super.viewDidLoad()
            view.addVerticalGradientLayer(topColor: primaryColor, bottomColor: secondaryColor)
//            welcomeLabel.text = "Welcome, \(user.persona.firstName) \(user.persona.secondName)"
//            handLabel.text = "👋🏻"
        }
        
    }

    // MARK: - Set background color
    extension UIView {
        func addVerticalGradientLayer(topColor: UIColor, bottomColor: UIColor) {
            let gradient = CAGradientLayer()
            gradient.frame = bounds
            gradient.colors = [topColor.cgColor, bottomColor.cgColor]
            gradient.locations = [0.0, 1.0]
            gradient.startPoint = CGPoint(x: 0, y: 0)
            gradient.endPoint = CGPoint(x: 0, y: 1)
            layer.insertSublayer(gradient, at: 0)
        }
    }
