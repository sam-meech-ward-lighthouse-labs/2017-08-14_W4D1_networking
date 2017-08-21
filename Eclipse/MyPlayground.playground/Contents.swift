//: Playground - noun: a place where people can play

import UIKit

var something: String

something = "🤗"
let somethingElse = "🙃"

let newString = "\(something) \(somethingElse) normalText \(4+5+9)"

print("Jazz Hands: " + something.uppercased())

var fizzBuzz: Optional<String> = "Fizz Buzz?"


let someNumber: Double = 5

// Optionals

fizzBuzz = nil

var pizza: [String]?

pizza = ["cheese", "marshmallows", "skittles"]

//pizza = nil

print(pizza!) // Unsafe

if var pizza = pizza {
    print("Pizaa has a value")
    print(pizza[0])
    
    pizza.append("Pineapple");
} else {
    print("Pizza has no value")
}

//pizza = nil
print(pizza)

//
pizza?.append("Pineapple")


// Arrays


var arrayOfNumbers: [Int] = [1, 2, 3]
let arrayOfStrings = ["", "String"]

arrayOfNumbers.append(5);
arrayOfNumbers.removeFirst()
arrayOfNumbers

var arrayOfAnything: [Any] = [1, "stirng"]
arrayOfAnything[1] = "String"
arrayOfAnything
arrayOfAnything.append(1.1)

var eclipseTime: [Double: String] = [10.00: "0 Percent Coverage of Sun", 10.15: "5 Percent Coverage of Sun"]

eclipseTime[10.15] = "85"
if let tenThirty = eclipseTime[10.30] {
    print(tenThirty)
}

if let ten = eclipseTime[10.00] {
    print("🤗")
    print(ten)
}

for key in eclipseTime.keys {
    print(key)
}

for _ in 0..<5 {
    print("🤗") // 0 1 2 3 4
}



func someFunction(i: Int) -> String {
    return "Something " + String(i)
}

someFunction(i: 2)


