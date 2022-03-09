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
        showAlert(title: "Ooops", message: "Your User password is 123")
    }
    
    @IBAction func logInPressed() {
    }
}

// MARK: - Private Methods
extension ViewController {
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) //{ _ in
            //self.textField.text = ""
        //}
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
