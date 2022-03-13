//
//  Model.swift
//  LogIn App
//
//  Created by Кирилл on 12.03.2022.
//

import Foundation


struct User {
    let userName: String
    let password: String
    
    static func userData() -> User {
        User(
            userName: "Kirill",
            password: "password"
        )
    }
}

struct Person {
//    var user = User()
    var name: String
    var surname: String
    var age: Int
    var job: String
    var hobby: String
    
    static func aboutMe() -> Person {
        Person(
            name: "Кирилл",
            surname: "Фроловский",
            age: 34,
            job: "метро",
            hobby: "сноубординг")
    }
}



