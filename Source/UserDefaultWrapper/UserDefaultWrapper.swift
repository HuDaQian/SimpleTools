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
@propertyWrapper public struct UserDefaultStorage<T: Codable> {
    private var value: T?
    private let keyPath: String
    private let defaultValue: T
    public init(_ keyPath: String, defaultValue: T) {
        self.value = UserDefaults.standard.object(forKey: keyPath) as? T ?? defaultValue
        self.keyPath = keyPath
        self.defaultValue = defaultValue
    }
    
    public var wrappedValue: T? {
        set {
            defer {
                UserDefaults.standard.set(value, forKey: keyPath)
            }
            value = newValue
        }
        get {
            value
        }
    }
}
