//
//  String+Ext.swift
//  Appetizers
//
//  Created by Lahiru Amarasooriya on 2023-06-25.
//

import Foundation
import RegexBuilder

extension String {
    
    var isValidEmail: Bool {
//        let emailFormat = "^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$"
//        let emailPredicate      = NSPredicate(format: "SELF MATCHES %@", emailFormat)
//        print(self)
//        return emailPredicate.evaluate(with: self)
        
        let emailFormat = Regex {
            /^/
            OneOrMore {
                CharacterClass(
                    .anyOf("._%+-"),
                    ("a"..."z"),
                    ("A"..."Z"),
                    ("0"..."9")
                )
            }
            "@"
            OneOrMore {
                CharacterClass(
                    .anyOf(".-"),
                    ("a"..."z"),
                    ("A"..."Z"),
                    ("0"..."9")
                )
            }
            "."
            Repeat(2...64) {
                CharacterClass(
                    ("a"..."z"),
                    ("A"..."Z")
                )
            }
            /$/
        }
        
        return self.wholeMatch(of: emailFormat) != nil
    }
}
