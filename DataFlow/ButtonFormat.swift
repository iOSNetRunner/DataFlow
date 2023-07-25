//
//  ButtonFormat.swift
//  DataFlow
//
//  Created by Dmitrii Galatskii on 25.07.2023.
//

import SwiftUI

struct ButtonFormat: ViewModifier {
    
    let frame: CGSize
    let color: Color
    let radius: CGFloat
    let strokeLineWidth: CGFloat
    
    func body(content: Content) -> some View {
        content
            .frame(width: frame.width, height: frame.height)
            .background(color)
            .cornerRadius(radius)
            .overlay(
                RoundedRectangle(cornerRadius: radius)
                    .stroke(.black, lineWidth: strokeLineWidth)
            )
    }
}
