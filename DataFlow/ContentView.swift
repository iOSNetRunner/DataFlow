//
//  ContentView.swift
//  DataFlow
//
//  Created by Vasichko Anna on 24.07.2023.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var timer = TimeCounter()
    @EnvironmentObject private var userSettings: UserSettings
    
    
    var body: some View {
        VStack {
            Text("Hi, \(userSettings.name)!")
                .font(.largeTitle)
                .padding(.top, 50)
            
            Text(timer.counter.formatted())
                .font(.largeTitle)
                .padding(.top, 100)
            Spacer()
            ButtonView(timer: timer)
            Spacer()
            Button(action: logout) {
                Text("LogOut")
                    .formatAndMakeBoldText()
            }
            .formatButton(color: .blue)
            
        }
        .padding()
    }
    
    private func logout() {
        userSettings.isRegistered.toggle()
        userSettings.name = ""
        if let bundleID = Bundle.main.bundleIdentifier {
            UserDefaults.standard.removePersistentDomain(forName: bundleID)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserSettings())
    }
}


extension View {
    func formatAndMakeBoldText() -> some View {
        modifier(TextFormat(font: .title, color: .white))
    }
    
    func formatButton(color: Color) -> some View {
        modifier(ButtonFormat(
            frame: CGSize(width: 200, height: 60),
            color: color,
            radius: 20,
            strokeLineWidth: 4)
        )
    }
}
