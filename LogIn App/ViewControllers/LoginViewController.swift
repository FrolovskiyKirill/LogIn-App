//
//  ViewController.swift
//  LogIn App
//
//  Created by Кирилл on 09.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: - IB Outlets
    @IBOutlet var userTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    private let user = User.userData()
    private let person = Person.aboutMe()
    
    
    // MARK: Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? UITabBarController else { return }
        print("1")
        guard let tabBar = tabBarController.viewControllers else { return }
        
        for viewController in tabBar {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.userLabel = person.name + " " + person.surname
            } else if let navigationVC = viewController as? UINavigationController {
                let aboutUserVC = navigationVC.topViewController as! AboutMeViewController
                aboutUserVC.userName = person.name
                aboutUserVC.userSurname = person.surname
                aboutUserVC.userAge = person.age
                aboutUserVC.userJob = person.job
                aboutUserVC.userHobby = person.hobby

            }
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    // MARK: - IB Actions
    @IBAction func showUser() {
        showAlert(title: "Ooops", message: "Your User name is \(user.userName)")
    }
    @IBAction func showPassword() {
        showAlert(title: "Ooops", message: "Your User password is \(user.password)")
    }
    
    @IBAction func logInPressed() {
        if userTextField.text == user.userName && passwordTextField.text == user.password {
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
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
