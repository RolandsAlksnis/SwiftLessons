import UIKit

// MARK: - OOP
// Class is a blueprint, a general purpose structure, define/declare a property or value once, use it many times

// blog

let postTitle = "OOP"
let postText = "Some text"
let postAuthor = "RA"

let postTitle2 = "OOP"
let postText2 = "Some text"
let postAuthor2 = postAuthor

class Post {
    var title = ""
    var text = ""
    var author = ""
}

let firstPost = Post()                              // Class initialized
firstPost.title = "This is my first post"
firstPost.text = "ayayaya"
firstPost.author = "RA"


let secondPost = Post()
secondPost.title = "wewewewewew"
secondPost.text = "xaxaxxax"
secondPost.author = "RA"

print("Author \(firstPost.author) has published new post \(firstPost.title) whith content: \(firstPost.text)")

print("Author \(secondPost.author) has published new post \(secondPost.title) whith content: \(secondPost.text)")

firstPost === secondPost



class Comment {
    var title = ""
    var text = ""
    var numberOfLikes = 20
    
    func addLikes() {
        numberOfLikes += 1
    }
}

let firstComment = Comment()
firstComment.title = "OOP"
firstComment.text = "TXT"
firstComment.addLikes()
firstComment.addLikes()
firstComment.addLikes()

let secondComment = firstComment
secondComment.title = "=)"

print("The number of likes for \(firstComment.title) is \(firstComment.numberOfLikes)")
print("The number of likes for \(secondComment.title) is \(secondComment.numberOfLikes)")



// MARK: - Initialization

class Human {
    var name = ""
    var age = 0

    init() {}
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
}

let person = Human(name: "Rowland", age: 22)
person.age
person.name

let player = Human()
person.age = 11
person.name = "Chopstix"


class Player {
    var team = "Lakers"
    var number: Int? = 23
    var tattoo = true
    
    func description () -> String{
        if let playerNumber = number {
            return "Hello, I'm playing in \(team) team and my number is \(playerNumber)"
        } else {
            return "Hello, I'm playing in \(team) team !"

        }
    }
    
}


let playerOne = Player()
playerOne.team = "MAVS"
playerOne.description()

let playerTwo = Player()
playerOne.team = "GSW"
playerOne.description()

var array = [Player]()

array.append(playerOne)
array.append(playerTwo)

// MARK:- Inheritance

class Parent {
    var name: String
    var age: Int
    
    init(name: String, age: Int){
        self.name = name
        self.age = age
    }
    
    func walk() {
        print("I can walk")
    }
    
    func sleep() {
        print("I can sleep")
    }
    
    func eat() {
        print("I can eat")
    }
}

let dad = Parent(name: "John", age: 44)
dad.name
dad.sleep()

class Child: Parent {
    func educating () {
        if age >= 3 && age <= 6 {
            print("Kindergarden age")
        } else if age < 3 {
            print("Too early for pre-school education")
        } else {
            print("Too late for pre-school education")
        }
    }
}

let littleBoy = Child(name: "Alex", age: 2)
littleBoy.educating()
littleBoy.age


class SchoolChild: Child {
    var student = false
}

let schoolChild = SchoolChild(name: "Tim", age: 12)
schoolChild.student = true


// MARK: - Polymorphism

class Figure {
    func draw () {    }
    
}

class Circle: Figure {
    override func draw () {
        print("Draw Circle")
    }
}

class Rectangle: Figure {
    override func draw () {
        print("Draw Rectangle")
    }
}

class Triangle: Figure {
    override func draw () {
        print("Draw Triangle")
    }
}

let triangle = Triangle()
triangle.draw()

func drawFigure(_ figure: Figure) {
    figure.draw()
}

drawFigure(triangle)
