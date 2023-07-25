//
//  TextFormat.swift
//  DataFlow
//
//  Created by Dmitrii Galatskii on 25.07.2023.
//
import SwiftUI

struct TextFormat: ViewModifier {
    let font: Font
    let color: Color
    
    func body(content: Content) -> some View {
        content
            .font(font)
            .bold()
            .foregroundColor(color)
    }
}
