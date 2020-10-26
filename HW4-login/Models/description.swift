//
//  description.swift
//  HW4-login
//
//  Created by Dmitry Tokarev on 25.10.2020.
//

class userDescription {
    let fullName: String
    let age: Int
    let city: String
    
    init(fullName: String, age: Int, city: String) {
        self.fullName = fullName
        self.age = age
        self.city = city
    }
}

let firstUserDescript = userDescription(fullName: "Tokarev Dmitry",
                                        age: 33,
                                        city: "Taganrog")
