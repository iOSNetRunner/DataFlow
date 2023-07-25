//
//  LoginView.swift
//  DataFlow
//
//  Created by Vasichko Anna on 24.07.2023.
//

import SwiftUI

struct LoginView: View {
    @State private var name = ""
    @EnvironmentObject private var userSettings: UserSettings
    
    var body: some View {
        VStack {
           TextField("Enter your name...", text: $name)
                .multilineTextAlignment(.center)
            Button(action: registerUser) {
                Label("OK", systemImage: "checkmark.circle")
            }
        }
    }
    
    private func registerUser() {
        if !name.isEmpty {
            userSettings.name = name
            userSettings.isRegistered.toggle()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(UserSettings())
    }
}
