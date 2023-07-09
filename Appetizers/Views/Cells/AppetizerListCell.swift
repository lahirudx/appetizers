//
//  AppetizerListCell.swift
//  Appetizers
//
//  Created by Lahiru Amarasooriya on 2023-06-09.
//

import SwiftUI

struct AppetizerListCell: View {
    
    var appetizer: Appetizer
    
    var body: some View {
        HStack {
            AsyncImage(url: URL(string: appetizer.imageURL)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(10)
            } placeholder: {
                Image("food-placeholder")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 120, height: 90)
                    .cornerRadius(10)
            }

            
            VStack(alignment: .leading, spacing: 5) {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text("$\(appetizer.price, specifier: "%.2F")")
                    .fontWeight(.semibold)
                    .foregroundColor(.secondary)
            }
            .padding(.horizontal)
        }
    }
}

struct AppetizerListCell_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerListCell(appetizer: MockData.sampleAppetizer)
    }
}
