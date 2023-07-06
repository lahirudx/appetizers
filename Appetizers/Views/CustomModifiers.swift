//
//  CustomModifiers.swift
//  Appetizers
//
//  Created by Lahiru Amarasooriya on 2023-07-05.
//
import SwiftUI

struct StandardButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .buttonStyle(.borderedProminent)
            .tint(.brandPrimary)
            .controlSize(.large)
    }
}

extension View {
    func standardButtonStyle() -> some View {
        self.modifier(StandardButtonStyle())
    }
}
