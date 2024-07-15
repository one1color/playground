import Foundation

public protocol Account {
    associatedtype Currency
    
    var balance: Currency { get }
    func deposit(amount: Currency)
    func withdraw(amount: Currency)
}

public typealias Dollars = Double

open class BasicAccount: Account {
    
    public private(set) var balance: Dollars = 0.0
    
    public init() { }
    
    public func deposit(amount: Dollars) {
        balance += amount
    }
    
    public func withdraw(amount: Dollars) {
        if amount <= balance {
            balance -= amount
        } else {
            balance = 0
        }
    }
}

class SavingsAccount: BasicAccount {
    var interestRate: Double
    private let pin: Int
    
    @available(*, deprecated, message: "Use init(interestRate:pin:) instead")
    init(interestRate: Double, pin: Int) {
        self.interestRate = interestRate
        self.pin = pin
    }
    
    @available(*, deprecated, message: "Use processInterest(pin:) instead")
    func processInterest() {
        if pin == self.pin {
            let interest = balance * interestRate
            deposit(amount: interest)
        }
    }
}

