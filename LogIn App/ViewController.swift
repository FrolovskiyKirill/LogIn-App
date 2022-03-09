//
//  ViewController.swift
//  LogIn App
//
//  Created by Кирилл on 09.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userLabel = userTextField.text
    }
    
    @IBAction func showUser() {
        showAlert(title: "Ooops", message: "Your User name is Alex")
    }
    @IBAction func showPassword() {
        showAlert(title: "Ooops", message: "Your User password is password")
    }
    
    @IBAction func logInPressed() {
        if userTextField.text == "Alex" && passwordTextField.text == "password" {
            performSegue(withIdentifier: "firstSegue", sender: nil)
        } else {
            showAlert(title: "Ooops", message: "Try again!")
        }
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userTextField.text = ""
        passwordTextField.text = ""
    }
    
}

// MARK: - Private Methods
extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) {
            _ in self.passwordTextField.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
