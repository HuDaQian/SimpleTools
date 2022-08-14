//
//  UserDefaultWrapper.swift
//  Pods-SimpleTools_Example
//
//  Created by HuDaQian on 2022/8/14.
//

import Foundation


/**
 The wrapper way to use Userdefault.
 Can use with enumToKey.
 eg:
 @UserDefaultStorage("Account_username", defaultValue: "Miloy")
 */
@propertyWrapper
struct UserDefaultStorage<T: Codable> {
    var value: T?
    let keyPath: String
    let defaultValue: T
    init(_ keyPath: String, defaultValue: T) {
        self.value = UserDefaults.standard.object(forKey: keyPath) as? T ?? defaultValue
        self.keyPath = keyPath
        self.defaultValue = defaultValue
    }
    
    var wrappedValue: T? {
        set {
            defer {
                if let value = value {
                    UserDefaults.standard.set(value, forKey: keyPath)
                } else {
                    UserDefaults.standard.removeObject(forKey: keyPath)
                }
            }
            value = newValue
        }
        get {
            value
        }
    }
}
