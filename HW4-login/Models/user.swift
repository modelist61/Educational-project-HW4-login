//
//  user.swift
//  HW4-login
//
//  Created by Dmitry Tokarev on 24.10.2020.
//

class userPassword {
    let user: String
    let password: String
    
    var someUser = [String: String]()
    
    init(user: String, password: String) {
        self.user = user
        self.password = password
    }
    
    func userDict(user: String, password: String) {
        someUser[user] = password
    }
}

let firstUser = userPassword(user: "User", password: "Password")








