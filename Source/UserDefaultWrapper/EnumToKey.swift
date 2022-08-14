//
//  EnumToKey.swift
//  Pods-SimpleTools_Example
//
//  Created by HuDaQian on 2022/8/14.
//

import Foundation

/**
 Flat one enum value.
 eg:
 enum A {
    case a
 }
 A.a.enumToKeys = "A_a"
 */

public extension RawRepresentable where RawValue == String {
    var enumToKeys: String {
        return String(reflecting: self)
            .split(separator: ".")
            .dropFirst()
            .joined(separator: "_")
    }
}
