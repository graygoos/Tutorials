/*
 Variables, Constants, Strings, and Numbers
 
 
 when you assign a text to a constant or variable, we call that a string -
 Swift's strings start and end with double quotes, but what you put inside those quotes is down to you.
 */

let movie = """
A day in
the life of an
Apple Engineer
"""

let actor = "Denzel Washington"

print(actor.count)
print(actor.uppercased())
print(actor.hasPrefix("Denzel"))

// Strings are case-sensitive in Swift

// camelCase, snake_case, kebab-case, PascalCase

/* How to store Whole Numbers */
let score = 5
let reallyBig = 1000000
let reallyReallyBig = 100_000_000_000

// compound assignment operators ---    +=  *=  -=  /=

// Like strings, integers have some useful functionality attached.
let number = 120
print(number.isMultiple(of: 3))
print(120.isMultiple(of: 4))

// How to store decimal numbers
// floating-point numbers

let number1 = 0.1 + 0.2
print(number1)

// when you create a floating-point number, Swift considers it to be a Double. That's short for "double-precision floating-point number", - it means Swift allocates twice the amount of storage as some older languages would do, meaning a double can store really large numbers

// Swift also considers decimals to be a wholly different type of data to integers, which means you can't mix them together. After all, integers are always 100% accurate, whereas decimals are not, so Swift won't let you put the two of them together unless you specifically ask for it to happen.

// Type safety: Swift won't let us mix different types of data by accident
let a = 1
let b = 2.0
//let c = a + b

let c = a + Int(b)
//let c = Double(a) + b

// once Swift has decided what data type a constant or variable holds, it must always hold that same data type.

// decimal numbers have the same range of operators and compound assignment operators as integers

/* How to store truth with Booleans */

/* How to join strings together */

// +
// \() - string interpolation

let firstPart = "Hello, "
let secondPart = "world!"
let greeting = firstPart + secondPart
print(greeting)


// operator overloading

let quote = "Then he tapped a sign saying \"Believe\" and waled away"
