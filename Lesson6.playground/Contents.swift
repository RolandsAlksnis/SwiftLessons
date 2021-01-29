import UIKit

// MARK: - Enumeration

var someDay = "Monday"

func setUpAlaram() {
    if someDay == "Monday" {
        print("Get up at 8am")
    } else {
        print("No alarm")
    }
}

setUpAlaram()

enum Weekday {
    case monday
    case tuesday
    case wednesday, thursday
}


// var weekday = Weekday.thursday
var weekday: Weekday = .monday

func setUpBedTime () {
    if weekday == .monday || weekday == .tuesday {
        print("Get up at 8am")
    } else {
        print("No alarm")
    }
}

setUpBedTime()

func setUpSleepAlarm() {
    switch weekday {
    case .monday:
        print("Get up at 8am")
    case .tuesday:
        print("Get up at 9am")
    case .wednesday:
        print("Get up at 10am")
    default:
        print("No alarm")
    }
}

weekday = .thursday
setUpSleepAlarm()

enum CalculationType: String {
    case addition = "+"
}

var calc = CalculationType.addition
print(calc.rawValue)

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, saturn, neptune, uranus
}

var somePlanet = Planet.earth
print("Earth is the\(somePlanet.rawValue) planet from the sun system")

enum Weekend {
    case saturday(String)
    case sunday(String, Int, String)
}

var wnd = Weekend.sunday("Set up bed-time at", 11, "pm")
print(wnd)

// MARK: - Struct

struct ChessBoard {
    var player: String
    var x: Int
    var y: Int
    
    func getPositionOnBoard() {
        print("The position of \(player): X \(x), Y \(y)")
    }
}

var playerOne = ChessBoard(player: "Timmy", x: 10, y: 8)
var playerTwo = ChessBoard(player: "Samuel", x: 2, y: 4)

playerOne.getPositionOnBoard()
playerTwo.getPositionOnBoard()

class MacBook {
    var name: String
    var year: Int
    var color: String
    
    init(name: String, year: Int, color: String) {
        self.name = name
        self.year = year
        self.color = color
    }
    
    func getSpecs() {
        print("\(name), \(year), \(color)")
    }
}

let macBookPro = MacBook(name: "MacBook Pro", year: 2020, color: "Grey")
macBookPro.getSpecs()


let macBookAir = macBookPro
macBookAir.name = "MacBook Air"
macBookPro.getSpecs()



// Struct cant inherit methods from another class, only its unique methods, creates new allocated memory, cant overwrite it as class can. Struct - value type, class - reference type.
struct iPhone {
    var name: String
    var year: Int
    var color: String
    
    func getSpecs() {
        print("\(name), \(year), \(color)")
    }
}

let iPhoneXR = iPhone(name: "iPhone XR", year: 2019, color: "Black")

var iPhoneXS = iPhoneXR
iPhoneXS.name = "iPhone XS"

iPhoneXR.getSpecs()
iPhoneXS.getSpecs()
