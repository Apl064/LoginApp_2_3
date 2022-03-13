//
//  PhotoViewController.swift
//  LoginApp_2_3
//
//  Created by Pavel Metelin on 3/13/22.
//

import UIKit

class PhotoViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    
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
        //imageView.image.
    }
}
