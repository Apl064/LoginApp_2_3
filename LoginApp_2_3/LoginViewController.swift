//
//  ViewController.swift
//  LoginApp_2_3
//
//  Created by Pavel Metelin on 3/8/22.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let userName = "tim"
    private let userPass = "zaraza"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return}
        welcomeVC.welcomeText = "Welcome, \(userNameTF.text ?? "") !!!"
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    @IBAction func userNameButtonPressed() {
        showAlert(title: "Oops!", message: "Your name is \(userName) 🙁")
    }
    
    @IBAction func passwordButtonPressed() {
        showAlert(title: "Oops!", message: "Your password is \(userPass) 🧐")
    }

    @IBAction func loginButtonPressed() {
        if userNameTF.text == userName && passwordTF.text == userPass {
            performSegue(withIdentifier: "segueLoginToWelcome", sender: nil)
        } else {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTF {
            passwordTF.becomeFirstResponder()
        } else {
            passwordTF.resignFirstResponder()
            loginButtonPressed()
        }
       return true
    }
    
}

// MARK: - Private Methods
extension LoginViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title,
                                      message: message,
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            if self.userNameTF.text != self.userName || self.passwordTF.text != self.userPass {
                self.passwordTF.text = ""
            }
        }

        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

