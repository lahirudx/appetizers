//
//  String+Ext.swift
//  Appetizers
//
//  Created by Lahiru Amarasooriya on 2023-06-25.
//

import Foundation

extension String {
    
    var isValidEmail: Bool {
        let emailFormat = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
        let emailPredicate      = NSPredicate(format: "SELF MATCHES %@", emailFormat)
        print(self)
        return emailPredicate.evaluate(with: self)
    }
}
