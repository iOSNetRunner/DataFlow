//
//  ButtonView.swift
//  DataFlow
//
//  Created by Dmitrii Galatskii on 25.07.2023.
//

import SwiftUI

struct ButtonView: View {
    @ObservedObject var timer: TimeCounter
    
    var body: some View {
        Button(action: timer.startTimer) {
            Text(timer.buttonTitle)
                .formatAndMakeBoldText()
        }
        .formatButton(color: .red)
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(timer: TimeCounter())
    }
}
