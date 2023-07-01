//
//  Appetizer.swift
//  Appetizers
//
//  Created by Lahiru Amarasooriya on 2023-04-24.
//

import Foundation

struct Appetizer: Decodable, Identifiable {
    let id: Int
    let name: String
    let description: String
    let price: Double
    let imageURL: String
    let calories: Int
    let protein: Int
    let carbs: Int
}

struct AppetizerResponse: Decodable {
    let request: [Appetizer]
}

struct MockData {
    static let sampleAppetizer = Appetizer(
        id: 0001,
        name: "Test Appetizer",
        description: "This is a sample Appetizer descriptions. It's Yummy",
        price: 9.99,
        imageURL: "",
        calories: 99,
        protein: 99,carbs: 99
    )
    
    static let appetizers = [sampleAppetizer, sampleAppetizer, sampleAppetizer, sampleAppetizer]
    
    static let orderItems = [
        Appetizer(
            id: 0001,
            name: "Test Appetizer One",
            description: "This is a sample Appetizer descriptions. It's Yummy",
            price: 9.99,
            imageURL: "",
            calories: 99,
            protein: 99,carbs: 99
        ),
        Appetizer(
            id: 0002,
            name: "Test Appetizer Two",
            description: "This is a sample Appetizer descriptions. It's Yummy",
            price: 8.99,
            imageURL: "",
            calories: 99,
            protein: 99,carbs: 99
        ),
        Appetizer(
            id: 0003,
            name: "Test Appetizer Three",
            description: "This is a sample Appetizer descriptions. It's Yummy",
            price: 9.69,
            imageURL: "",
            calories: 99,
            protein: 99,carbs: 99
        ),
    ]
}
