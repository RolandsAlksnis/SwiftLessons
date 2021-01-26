// MARK: - Lesson 1 - Variables and Constants

import UIKit

// MARK: - String

var str = "Hello !"

let string = "Tough String Text"

str = "Playground"

print(str)

var capitalCity = "Riga"
var outcome = str + "," + capitalCity
print("The outcome 🌺 = ", outcome)

#warning("The code is not compiling !")
/*
 
 
 */

// MARK: - String interpolation

var swift = "Swift"
var year = 2014

print("Welcome to the \(swift) community. Together we are working to build a programming language to empower everyone to turn their ideas into apps on any platform.Announced in \(year), the \(swift) programming language has quickly become one of the fastest growing languages in history. \(swift) makes it easy to write software that is incredibly fast and safe by design. Our goals for \(swift) are ambitious: we want to make programming simple things easy, and difficult things possible.For students, learning \(swift) has been a great introduction to modern programming concepts and best practices. And because it is open, their \(swift) skills will be able to be applied to an even broader range of platforms, from mobile devices to the desktop to the cloud.")


var aboutSwift = """

Announced in 2014, the Swift programming language has quickly become one of the fastest growing languages in history. Swift makes it easy to write software that is incredibly fast and safe by design. Our goals for Swift are ambitious: we want to make programming simple things easy, and difficult things possible.

"""
print(aboutSwift)

// MARK: - Types of Data

let name: String = "AM"
let age: Int = 34
let height: Double = 194.5
let weight: Float = 94
let student: Bool = false

var myDouble: Double = 10.0
myDouble = 12345.9
myDouble = 12345.90
myDouble = 12345.901
myDouble = 12345.9018


var myFloat: Double = 10.0
myFloat = 12345.9
myFloat = 12345.90
myFloat = 12345.901
myFloat = 12345.9018


// MARK: - Tuples

let http404error = (404, "Page Not Found")

let (statusCode, statusMessage) = http404error

print("Status code is \(statusCode) and the status message is \(statusMessage)")

// MARK: - Casting

let castIntToDouble = Double(age) + height
print(castIntToDouble)


let castDoubleToInt = age + Int(weight)
print(castDoubleToInt)

let stringNumber = "10"
let castStringToInt = age + Int(stringNumber)!
print(castStringToInt)

// MARK: - Operators

var a = 10
a = a + 1
a = a - 1
a = a * 2
a = a / 2

var b = 20
b -= 5

// reminder
let f = 9
let e = 4
var g = f % e // atlikums
var m = f / e // skaits

a == b
f != e


// MARK: - Comparison Operator

let word = "word1"
if word == "word" {
    print("Hello, Word !")
} else {
    print("Im sorry")
}

// MARK: - Comparison Operator

let updateMessage = "Cant update XCode !"
let update = "Updated! "

let latestXcode = false
let latestMacVersion = true

if !latestXcode && latestMacVersion {
    print("We can continue developing")
} else {
    print("We need to update XCode !")
}

if latestXcode || latestMacVersion {
    print(updateMessage)
} else {
    print(update)
}
