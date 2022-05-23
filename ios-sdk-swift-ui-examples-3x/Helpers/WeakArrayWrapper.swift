//
//  WeakArrayWrapper.swift
//  TaboolaSwiftUI
//
//  Copyright © 2022 Taboola. All rights reserved.
//

import Foundation

@propertyWrapper
struct Weak<Element> where Element: AnyObject {
    private var storage = [WeakObject<Element>]()
    
    var wrappedValue: [Element] {
        get { storage.compactMap { $0.value } }
        set { storage = newValue.map { WeakObject($0) } }
    }
}

private final class WeakObject<T: AnyObject> {
    private(set) weak var value : T?
    
    init(_ value: T) {
        self.value = value
    }
}
