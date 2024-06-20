import UIKit

//: Compactmap
let userInput = ["dog", "15", "2.5", "one"]
var arrayForValidInput: [Int] = []
for input in userInput {
    guard let input = Int(input) else {
        continue
    }
    arrayForValidInput.append(input)
}
arrayForValidInput

let validInput = userInput.compactMap { value in
    Int(value)
}
validInput


//: flatMap
let arrayOfArrays = [
    ["Ravi", "Koki", "Wolfgang", "Thomas"],
    ["Mattia", "Andi"]
]

let arrayAfter = arrayOfArrays.flatMap { names -> [String] in
    names
}

let arrayStartAfterL = arrayOfArrays.flatMap { names -> [String] in
    var afterL: [String] = []
    for name in names where name > "L" {
        afterL.append(name)
    }
    return afterL
}

arrayAfter
arrayStartAfterL


//: Challege
class Student {
  let name: String
  var grade: Int
  var pet: String?
  var libraryBooks: [String]

  init(name: String, grade: Int, pet: String? = nil, libraryBooks: [String]) {
    self.name = name
    self.grade = grade
    self.pet = pet
    self.libraryBooks = libraryBooks
  }

  func getPassStatus(lowestPass: Int = 50) -> Bool {
    grade >= lowestPass
  }

  func earnExtraCredit() {
    grade += 10
  }
}

let chris = Student(name: "Chris", grade: 49, pet: "Mango", libraryBooks: ["The Book of Atrus", "Living by the Code", "Mastering Git"])
let sam = Student(name: "Sam", grade: 99, pet: nil, libraryBooks: ["Mastering Git"])
let catie = Student(name: "Catie", grade: 75, pet: "Ozma", libraryBooks: ["Hogfather", "Good Omens"])
let andrea = Student(name: "Andrea", grade: 88, pet: "Kitten", libraryBooks: ["Dare to Lead", "The Warrior's Apprentice"])

let students = [chris, sam, catie, andrea]

/*:
 ## Challenge 1 - `forEach` & `map`
 There are two `for` loops below.
 Rewrite one of them using `forEach` and the other with `map`
*/

for student in students {
  student.earnExtraCredit()
}

students.forEach { student in
    student.earnExtraCredit()
}


var classLibraryBooks: [[String]] = []
for student in students {
  classLibraryBooks.append(student.libraryBooks)
}

let classLibraryBooksWithMap = students.map { student -> [String] in
    student.libraryBooks
}

/*:
 ## Challenge 2 - compactMap
 Replace the `for` loop below with compactMap.
 It will filter out the `nil` values for you!
*/

var classPets: [String] = []
for student in students {
  if let pet = student.pet {
    classPets.append(pet)
  }
}

let classPetsWithCompactMap = students.compactMap { student -> String?  in
    student.pet
}

let classPetsWithCompactMap2 = students.compactMap {
    $0.pet
}


/*:
 ## Challenge 3 - flatMap
 In Challenge 1 you created `libraryBooks`, an array of String arrays!
 Try using flatMap to flatten all of the books into a single String array.
*/

let libraryBooksSingleArray = students.flatMap { student -> [String] in
    student.libraryBooks
}
print(libraryBooksSingleArray)
