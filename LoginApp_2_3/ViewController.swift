//
//  ViewController.swift
//  LoginApp_2_3
//
//  Created by Pavel Metelin on 3/8/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    let userName = "timkook"
    let userPass = "zaraza"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.userNameTF.delegate = self
        
    }
    
    @IBAction func userNameButtonPressed() {
        showAlert(title: "Oops!", message: "Your name is \(userName)")
    }
    
    @IBAction func passwordButtonPressed() {
        showAlert(title: "Oops!", message: "Your password is \(userPass)")
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField.returnKeyType == .next {
            textField.addTarget(passwordTF,
                                action: #selector(UIResponder.becomeFirstResponder),
                                for: .editingDidEndOnExit)
            return textField.becomeFirstResponder()
        } else {
            return textField.resignFirstResponder()
        }
    }
}

// MARK: - Private Methods
extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)

        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

