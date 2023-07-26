//
//  File.swift
//  DataFlow
//
//  Created by Vasichko Anna on 24.07.2023.
//


import SwiftUI

final class UserSettings: ObservableObject {
    @AppStorage("isRegistered") var isRegistered = false
    @AppStorage("name") var name = ""
}
