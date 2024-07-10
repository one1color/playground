import XCTest
import Foundation

let account = BasicAccount()

account.deposit(amount: 10.00)
account.withdraw(amount: 5.00)

let johnChecking = CheckingAccount()
johnChecking.deposit(amount: 300.00)

let check = johnChecking.writeCheck(amount: 200.0)!

let janeChecking = CheckingAccount()
janeChecking.deposit(check)
janeChecking.balance

janeChecking.deposit(check)
janeChecking.balance

//Mini exercise
//Create a struct Person in a new Sources file. This struct should have first, last and fullName properties readable but not writable by the playground.
let koki = Person(first: "Koki", last: "Isshiki")
koki.fullName

//: 2. Create a similar type, except make it a class and call it `ClassyPerson`. In the playground, subclass `ClassyPerson` with class `Doctor` and make a doctor's `fullName` print the prefix "Dr.".

class Doctor: ClassyPerson {
    override var fullName: String {
        "Dr. \(super.fullName)"
    }
}

class SavingsAccount: BasicAccount {
    var interestRate: Double
    private let pin: Int

    @available(*, deprecated, message: "Use init(interestRate:pin:) instead")
    init(interestRate: Double) {
        self.interestRate = interestRate
        pin = 0;
    }

    init(interestRate: Double, pin: Int) {
        self.interestRate = interestRate
        self.pin = pin
    }

    @available(*, deprecated, message: "Use processInterest(pin:) instead")
    func processInterest() {
        let interest = balance * interestRate
        deposit(amount: interest)
    }

    func processInterest(pin: Int) {
        if pin == self.pin {
            let interest = balance * interestRate
            deposit(amount: interest)
        }
    }
}

func createAccount() -> some Account {
    CheckingAccount()
}

class BankingTests: XCTestCase {

    var checkingAccount: CheckingAccount!

    override func setUp() {
        super.setUp()
        checkingAccount = CheckingAccount()
    }

    override func tearDown() {
        checkingAccount.withdraw(amount: checkingAccount.balance)
        super.tearDown()
    }

    func testNewAccountBalanceZero() {
        let checkingAccount = CheckingAccount()
        XCTAssertEqual(checkingAccount.balance, 0)
    }

    func testCheckOverBudgetFails() {
        let checkingAccount = CheckingAccount()
        let check = checkingAccount.writeCheck(amount: 100)
        XCTAssertNil(check)
    }

    func testNewAPI() {
        guard #available(iOS 15, *) else {
            XCTSkip("Only available in iOS 15 and above")
            return
        }
    }
}

BankingTests.defaultTestSuite.run()


///Challenge 1:

class Logger {
    private init() { }
    
    static let shared = Logger()

    func log(text: String) {
        print(text)
    }
}

Logger.shared.log(text: "Hello!")
//Logger().log(text: "Not working") ///Since the Logger class has restricted instance, directly instantiate by consuming code doesn't work.

///Challenge 2:

struct Stack<Item> {
    private var items: [Item] = []

    func peek() -> Item? {
        return items.last
    }

    mutating func push(newItem: Item) {
        items.append(newItem)
    }

    mutating func pop() -> Item? {
        if items.isEmpty {
            return nil
        }
        return items.removeLast()
    }

    var count: Int {
        items.count
    }
}

var test = Stack<String>()

test.count
test.push(newItem: "test")
test.push(newItem: "hello")
test.push(newItem: "world")

test.pop()
test

///Challenge 3
///
let elf = GameCharacterFactory.make(ofType: .elf)
let giant = GameCharacterFactory.make(ofType: .giant)
let wizard = GameCharacterFactory.make(ofType: .wizard)

battle(elf, vs: giant) // Giant defeated!
battle(wizard, vs: giant) // Giant defeated!
battle(wizard, vs: elf) // Elf defeated!
