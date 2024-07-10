import Foundation

public struct Person {
    public private(set) var first: String
    public private(set) var last: String

    public init(first: String, last: String) {
        self.first = first
        self.last = last
    }

    public var fullName: String {
        "\(first) \(last)"
    }
}

open class ClassyPerson {
    public private(set) var first: String
    public private(set) var last: String

    public init(first: String, last: String) {
        self.first = first
        self.last = last
    }

    open var fullName: String {
        "\(first) \(last)"
    }
}
