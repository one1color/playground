//: [⇐ Previous: 07 - Challenge - forEach and map](@previous)
//: ## Episode 08: filter, reduce, and sort

// --------------------------------------
let arrayOfDwarfArrays = [
  ["Sleepy", "Grumpy", "Doc", "Bashful", "Sneezy"],
  ["Thorin", "Nori", "Bombur"]
]
// --------------------------------------

//: filter

let dwarvesAfterM = arrayOfDwarfArrays.flatMap { dwarves -> [String] in
  var afterM: [String] = []
  for dwarf in dwarves where dwarf > "M" {
    afterM.append(dwarf)
  }
  return afterM
}


let dwarvesAfterM2 = arrayOfDwarfArrays.flatMap { dwarves -> [String] in
  dwarves.filter { $0 > "M" }
}



//: reduce


let ozmaGrades = [60, 96, 87, 42]

func getPassStatus(for grades: [Int], lowestPass: Int) -> Bool {
    var totalGrade = 0
    for grade in grades {
        totalGrade += grade
    }
    return (totalGrade / grades.count) > lowestPass
}




func getPassStatus2(for grades: [Int], lowestPass: Int) -> Bool {
  let totalGrade = grades.reduce(0, +)

  return (totalGrade / grades.count) > lowestPass
}

getPassStatus(for: ozmaGrades, lowestPass: 60)
getPassStatus2(for: ozmaGrades, lowestPass: 60)

//: reduce(into:)
var stock = [1.50: 5, 10.00: 2, 4.99: 20, 2.30: 5, 8.19: 30]

let stockSums = stock.reduce(into: []) { (result, item) in
  result.append(item.key * Double(item.value))
}


//: Sorting Methods

var names = ["Zeus", "Poseidon", "Ares", "Demeter"]

names.sort()
names.sort { (a, b) -> Bool in
  a > b
}
names.sort(by: >)

//: sorted() & sorted(by:) - Returns a new collection that is sorted

let longToShortNames = names.sorted {
  $0.count > $1.count
}

longToShortNames
names


/*:
 ## Challenge Time 😎

 Create a constant array called `names` which contains some names as strings (any names will do — make sure there’s more than three though!). Now use `reduce` to create a string which is the concatenation of each name in the array.
*/




let names_example = ["Koki", "Thomas", "Wolfgang", "Ravi", "Bernhard", "Nemanja"]

let nameTogether = names_example.reduce("") { (result, item) in
    result + item
}



/*:
 Using the same `names` array, first filter the array to contain only names which have more than four characters in them, and then create the same concatenation of names as in the above exercise. (Hint: you can chain these operations together.)
*/

let shortName = names_example.filter{$0.count > 4}.reduce("") { (result, item) in
    result + item
}



/*:
 Create a constant dictionary called `namesAndAges` which contains some names as strings mapped to ages as integers. Now use `filter` to create a dictionary containing only people under the age of 18.
*/


let namesAndAges = ["Ozma": 7, "Leo": 14, "Jessy": 35, "Albus": 150]

let under18 = namesAndAges.filter {
    $0.value < 18
}


/*:
 Using the same `namesAndAges` dictionary, filter out the adults (those 18 or older) and then use `map` to convert to an array containing just the names (i.e. drop the ages).
*/



let adult = namesAndAges.filter {
    $0.value > 18
}.map {
    $0.key
}
