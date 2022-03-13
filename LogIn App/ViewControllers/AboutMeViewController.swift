//
//  AboutMeViewController.swift
//  LogIn App
//
//  Created by Кирилл on 12.03.2022.
//

import UIKit

class AboutMeViewController: UIViewController {

    @IBOutlet var aboutMe: UILabel!
    var userName: String?
    var userSurname: String?
    var userAge: Int?
    var userJob: String?
    var userHobby: String?

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let userName = userName else { return }
        guard let userSurname = userSurname else { return }
        guard let userAge = userAge else { return }
        guard let userJob = userJob else { return }
        guard let userHobby = userHobby else { return }
        
        aboutMe.text = "Привет! Меня зовут \(userName) \(userSurname) и мне \(userAge) года. Я работаю в \(userJob) и очень люблю \(userHobby)!"
    }

}
