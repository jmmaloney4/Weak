// Copyright © 2017 Jack Maloney. All Rights Reserved.
//
// This Source Code Form is subject to the terms of the Mozilla Public
// License, v. 2.0. If a copy of the MPL was not distributed with this
// file, You can obtain one at http://mozilla.org/MPL/2.0/.

import Foundation

postfix operator .?
postfix operator .!

public class Weak<T: AnyObject>: Equatable, CustomStringConvertible {
    public weak var value: T?

    public var description: String {
        if value != nil {
            return "\(value!)"
        } else {
            return "nil"
        }
    }
    
    public init() {
        value = nil
    }

    public init(_ value: T) {
        self.value = value
    }

    public var isNil: Bool { return value == nil }

    public static func == (lhs: Weak<T>, rhs: Weak<T>) -> Bool {
        return lhs.value === rhs.value
    }

    public static func == (lhs: Weak<T>, rhs: T) -> Bool {
        return lhs.value === rhs
    }
    
    public static postfix func .? (weak: Weak<T>) -> T? {
        return weak.value
    }
    
    public static postfix func .! (weak: Weak<T>) -> T {
        return weak.value!
    }
}

extension Weak where T: Equatable {
    public static func == (lhs: Weak<T>, rhs: Weak<T>) -> Bool {
        return lhs.value == rhs.value
    }

    public static func == (lhs: Weak<T>, rhs: T) -> Bool {
        return lhs.value == rhs
    }
}

extension Array where Element: Weak<AnyObject> {
    /// Returns an array that has removed all elements that are `nil`.
    func reap() -> Array {
        return self.filter({ !$0.isNil })
    }
}
