//
//  AboutViewController.swift
//  LoginApp_2_3
//
//  Created by Pavel Metelin on 3/13/22.
//

import UIKit

class AboutViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var aboutLabel: UILabel!
    
    // MARK: - Properties
    var user: User!
    
    // MARK: - Private properties
    private let primaryColor = UIColor(
        red: 243/255,
        green: 243/255,
        blue: 243/255,
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
        aboutLabel.text = "\(user.persona.aboutUser)"
    }
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? PhotoViewController else { return }
        infoVC.user = user
    }
}
