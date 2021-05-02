//
//  GRUserDefault.swift
//  GRUserDefault
//
//  Created by Gaurav Parmar on 02/05/21.
//

import Foundation

// MARK: - Key Namespaceable
public protocol KeyNamespaceable { }
extension KeyNamespaceable {
    private static func namespace(_ key: String) -> String {
        return "\(Self.self).\(key)"
    }
    static func namespace<T: RawRepresentable>(_ key: T) -> String where T.RawValue == String {
        return namespace(key.rawValue)
    }
}
// MARK: - Bool Defaults
public protocol BoolUserDefaultable: KeyNamespaceable {
    associatedtype BoolDefaultKey: RawRepresentable
}
extension BoolUserDefaultable where BoolDefaultKey.RawValue == String {
    // Set

    static func set(_ bool: Bool, forKey key: BoolDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(bool, forKey: key)
    }
    // Get

    static func bool(forKey key: BoolDefaultKey) -> Bool {
        let key = namespace(key)
        return UserDefaults.standard.bool(forKey: key)
    }
}
// MARK: - Float Defaults
public protocol FloatUserDefaultable: KeyNamespaceable {
    associatedtype FloatDefaultKey: RawRepresentable
}
extension FloatUserDefaultable where FloatDefaultKey.RawValue == String {
    // Set

    static func set(_ float: Float, forKey key: FloatDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(float, forKey: key)
    }
    // Get

    static func float(forKey key: FloatDefaultKey) -> Float {
        let key = namespace(key)
        return UserDefaults.standard.float(forKey: key)
    }
}
// MARK: - Integer Defaults
public protocol IntegerUserDefaultable: KeyNamespaceable {
    associatedtype IntegerDefaultKey: RawRepresentable
}
extension IntegerUserDefaultable where IntegerDefaultKey.RawValue == String {
    // Set

    static func set(_ integer: Int, forKey key: IntegerDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(integer, forKey: key)
    }
    // Get

    static func integer(forKey key: IntegerDefaultKey) -> Int {
        let key = namespace(key)
        return UserDefaults.standard.integer(forKey: key)
    }
}
// MARK: - Object Defaults
public protocol ObjectUserDefaultable: KeyNamespaceable {
    associatedtype ObjectDefaultKey: RawRepresentable
}
extension ObjectUserDefaultable where ObjectDefaultKey.RawValue == String {
    // Set

    static func set(_ object: AnyObject, forKey key: ObjectDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(object, forKey: key)
    }
    // Get

    static func object(forKey key: ObjectDefaultKey) -> Any? {
        let key = namespace(key)
        return UserDefaults.standard.object(forKey: key)
    }
}
// MARK: - Double Defaults
public protocol DoubleUserDefaultable: KeyNamespaceable {
    associatedtype DoubleDefaultKey: RawRepresentable
}
extension DoubleUserDefaultable where DoubleDefaultKey.RawValue == String {
    // Set

    static func set(_ double: Double, forKey key: DoubleDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(double, forKey: key)
    }
    // Get

    static func double(forKey key: DoubleDefaultKey) -> Double {
        let key = namespace(key)
        return UserDefaults.standard.double(forKey: key)
    }
}
// MARK: - URL Defaults
public protocol URLUserDefaultable: KeyNamespaceable {
    associatedtype URLDefaultKey: RawRepresentable
}
extension URLUserDefaultable where URLDefaultKey.RawValue == String {
    // Set

    static func set(_ url: URL, forKey key: URLDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(url, forKey: key)
    }
    // Get

    static func url(forKey key: URLDefaultKey) -> URL? {
        let key = namespace(key)
        return UserDefaults.standard.url(forKey: key)
    }
}
// MARK: - String Defaults
public protocol StringUserDefaultable: KeyNamespaceable {
    associatedtype StringDefaultKey: RawRepresentable
}
extension StringUserDefaultable where StringDefaultKey.RawValue == String {
    // Set
    static func set(_ string: String, forKey key: StringDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(string, forKey: key)
    }
    // Get
    static func string(forKey key: StringDefaultKey) -> String? {
        let key = namespace(key)
        return UserDefaults.standard.string(forKey: key)
    }
}
// MARK: - Array Defaults
public protocol ArrayUserDefaultable: KeyNamespaceable {
    associatedtype ArrayDefaultKey: RawRepresentable
}
extension ArrayUserDefaultable where ArrayDefaultKey.RawValue == String {
    // Set
    static func set(_ array: [Any], forKey key: ArrayDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(array, forKey: key)
    }
    // Get
    static func array(forKey key: ArrayDefaultKey) -> [Any]? {
        let key = namespace(key)
        return UserDefaults.standard.array(forKey: key)
    }
}
// MARK: - Dictionary Defaults
public protocol DictionaryUserDefaultable: KeyNamespaceable {
    associatedtype DictionaryDefaultKey: RawRepresentable
}
extension DictionaryUserDefaultable where DictionaryDefaultKey.RawValue == String {
    // Set
    static func set(_ dictionary: [String: Any], forKey key: DictionaryDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(dictionary, forKey: key)
    }
    // Get
    static func dictionary(forKey key: DictionaryDefaultKey) -> [String: Any]? {
        let key = namespace(key)
        return UserDefaults.standard.dictionary(forKey: key)
    }
}
// MARK: - Data Defaults
public protocol DataUserDefaultable: KeyNamespaceable {
    associatedtype DataDefaultKey: RawRepresentable
}
extension DataUserDefaultable where DataDefaultKey.RawValue == String {
    // Set
    static func set(_ data: Data, forKey key: DataDefaultKey) {
        let key = namespace(key)
        UserDefaults.standard.set(data, forKey: key)
    }
    // Get
    static func data(forKey key: DataDefaultKey) -> Data? {
        let key = namespace(key)
        return UserDefaults.standard.data(forKey: key)
    }
}

