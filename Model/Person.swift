//
//  Person.swift
//  PersonsList
//
//  Created by Vladimir Zhirov on 11/29/19.
//  Copyright © 2019 Vladimir Zhirov. All rights reserved.
//

import Foundation

struct Person {
    var name: String
    var surname: String
    var email: String
    var phoneNumber: String

    init (name: String,
          surname: String,
          email: String,
          phoneNumber: String) {
        self.name = name;
        self.surname = surname;
        self.email = email;
        self.phoneNumber = phoneNumber
    }




}
