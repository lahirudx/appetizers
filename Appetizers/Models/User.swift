//
//  User.swift
//  Appetizers
//
//  Created by Lahiru Amarasooriya on 2023-07-01.
//

import Foundation

struct User: Codable {
    var firstName: String = ""
    var lastName: String = ""
    var email: String = ""
    var birthDate = Date()
    var extraNapkins = false
    var frequentRefills = false
}
