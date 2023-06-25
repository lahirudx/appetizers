//
//  APButton.swift
//  Appetizers
//
//  Created by Lahiru Amarasooriya on 2023-06-25.
//

import SwiftUI

struct APButton: View {
    var title: LocalizedStringKey
    var body: some View {
        Text(title)
            .font(.title3)
            .fontWeight(.semibold)
            .frame(width: 260, height: 50)
            .foregroundColor(.white)
            .background(Color.brandPrimary)
            .cornerRadius(10)
    }
}

struct APButton_Previews: PreviewProvider {
    static var previews: some View {
        APButton(title: "AP Button")
    }
}
