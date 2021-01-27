import UIKit

// MARK: - Array

let arrayOfStrings = ["asd","b","csd","ssds","a"]  // [String] specifies that its a String array

print(arrayOfStrings[3])


let arrayOfCharacters: [Character] = ["a","b","c","s","a"]


var arrayOfIntegers: [Int] = []
// var arrayOfIntegers = [Int]()       // Same example as above, same initializing

arrayOfIntegers = [1,2,3,4,5,6]
print("1: ", arrayOfIntegers)

arrayOfIntegers = [11,22,33,44,5,6]
print("2: ", arrayOfIntegers)

arrayOfIntegers += [0, 9]
print("3: ", arrayOfIntegers)

arrayOfIntegers.append(66)
print("4: ", arrayOfIntegers)

arrayOfIntegers.insert(23, at: 2)
print("5: ", arrayOfIntegers)

type(of: arrayOfIntegers)       // The type of array

let someArrayOfInt = [97,98]

var intArr = arrayOfIntegers + someArrayOfInt

print("intArr: ", intArr)

intArr.count

intArr[3] = 11
print("intArr2: ", intArr)

print(intArr.isEmpty)

// intArr.removeAll()

if intArr.isEmpty {
    print("intArr is empty")
} else {
    print(intArr)
}


if !intArr.isEmpty {
    print(intArr)
} else {
    print("intArr is empty")
}


intArr.remove(at: 3)

print("intArr3: ", intArr)

var newArrayOfStrings = ["me", "you"]
var oldArrayOfStrings = ["he", "she"]

var both = newArrayOfStrings + oldArrayOfStrings
print(both)

both += ["new"]
print(both)




// MARK: - Set

let setOfStrings: Set = ["a","b","c","s","a"]

print("setOfStrings::::: ", setOfStrings)

setOfStrings.contains("b")

setOfStrings.sorted(by: >)
print("setOfString > ", setOfStrings)


var setOfCharacters: Set<Character> = []        // Initializing empty one
setOfCharacters = ["d"]
setOfCharacters.insert("r")
print(setOfCharacters)
setOfCharacters = []
print(setOfCharacters)


type(of: setOfCharacters)


// MARK: - Dictionaries

var someStringDictionary = Dictionary<String, String>()

var moreStringIntDictionary = [String: Int]()

var stringDictionary: [String: String] = [:]

// 3 ways to initialize dictionary


stringDictionary = ["name"    : "AM",
                    "age"     : "34",
                    "webLink" : "1a.lv"
]

print(stringDictionary)
stringDictionary["email"] = "a@a.com"
print("++++++++++++++")

stringDictionary["email1"]
stringDictionary["name"] = "Arkadijs"
print(stringDictionary)

stringDictionary.count
stringDictionary.updateValue("b@b.com", forKey: "email")
print(stringDictionary)

stringDictionary.removeValue(forKey: "email")
print(stringDictionary)
stringDictionary["age"] = nil
print(stringDictionary)



// MARK: - For loop

print("6 x 10 = \(6 * 10)")
print("-------------------")

for i in 1...10 {
    print("\(i) * 10 = \(i * 10)")
}

for _ in 1...10 {
    print("Hello !")
}

let apples = ["red apple", "red apple","red apple","green apple"]

type(of: apples)

var basket = 0

for apple in apples {
    if apple == "red apple"{
        basket += 1
    }
}

print("I have \(basket) red apples in my basket")

let numberOfLegs = [ "spider": 8,
                     "dog"   : 4,
                     "ant"   : 6,

]

for (animalName, legsCount) in numberOfLegs {
    print("\(animalName) has \(legsCount) legs")
}

let someText = "Swift"
for char in someText {
    print(char)
}

// MARK: - While Loop

var count = 5

while count > 0 {
    print("Countdown: \(count)")
    count -= 1
}

var counter = 1

while true {
    print("Counter is now: \(counter)")
    counter += 1
    
    if counter == 20 {
        break
    }
}
