//
//  StorageManager.swift
//  DataFlow
//
//  Created by Dmitrii Galatskii on 25.07.2023.
//

import Foundation

final class StorageManager {
    static let shared = StorageManager()
    
    private let key = "name"
    private let userDefaults = UserDefaults.standard
    
    private init() {}
    
    func save(name: String) {
        userDefaults.set(name, forKey: key)
    }
    
    func fetchName() -> String {
        if let name = userDefaults.string(forKey: key) {
            return name
        }
        return ""
    }
    
    func deleteName() {
        userDefaults.removeObject(forKey: key)
    }
}
