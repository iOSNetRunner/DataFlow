//
//  LoginView.swift
//  DataFlow
//
//  Created by Vasichko Anna on 24.07.2023.
//

import SwiftUI

struct LoginView: View {
    @AppStorage("name") private var name = ""
    @EnvironmentObject private var userSettings: UserSettings
    
    var body: some View {
        VStack {
            HStack {
                TextField("Enter your name...", text: $name)
                    .frame(width: 200)
                    .autocorrectionDisabled(true)
                
                Text("\(name.count)")
                    .foregroundColor(name.count > 2 ? .green : .red)
            }
            .multilineTextAlignment(.center)
            
            Button(action: registerUser) {
                Label("OK", systemImage: "checkmark.circle")
                    .disabled(name.count < 3)
            }
        }
        
    }
    
    private func registerUser() {
        if !name.isEmpty && name.count > 2 {
            userSettings.name = name
            userSettings.isRegistered.toggle()
            StorageManager.shared.save(name: name)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environmentObject(UserSettings())
    }
}
