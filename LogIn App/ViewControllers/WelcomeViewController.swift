//
//  WelcomeViewController.swift
//  LogIn App
//
//  Created by Кирилл on 09.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    var userLabel: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userLabel = userLabel else { return }
        greetingLabel.text = "Привет, \(userLabel)!"
    }
}
