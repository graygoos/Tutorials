import UIKit
// Functions

/*
 Functions let us wrap up pieces of code so they can be used in lots of places. We send data into functions to customize how they work, and get back data that tells us the result that was calculated.
 
 When you've written some code you really like, and want to use again again, you should consider putting it into a function. Functions are just chunks of code you've split off from the rest of your program, and given a name so you can refer to them easily.
 */

func showWelcome() {
    print("Welcome to my app")
    print("By default This prints out a conversion")
    print("chart from centimeters to inches, buy you")
    print("can also set a custom range if you want.")
}

/* () are used with functions. they are used when you create a function, and also when you call the function
 
 so what do the parentheses actually do? that's where we add configuration options for our functions - we get to pass in data that customizes the way the function works, so the function becomes more flexible.
 */

let number = 139

if number.isMultiple(of: 2) {
    print("Even")
} else {
    print("Odd")
}

//func printTimesTables(number: Int) {
//    for i in 1...12 {
//        print("\(i) x \(number) is \(i * number)")
//    }
//}

func printTimesTables(number: Int, end: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(number: 5, end: 20)
// number, end: parameter/placeholder
// 5, 20: arguments/actual value

// Regardless of whether you're calling them "arguments" or "parameters", when you ask Swift to call the function you must always pass the parameters in the order they were listed when you created the function.

// Any data you create inside a function is automatically destroyed when the function is finished.


// How to return values from functions

/*
 functions also send data back - they perform some computation, then return the result of that work back to the call site.
 */

let root = sqrt(169)
print(root)

/*
 If you want to return your own value from a function, you need to do two things:
 
 1. Write an arrow then a data type before your function's opening brace, which tells Swift what kind of data will be sent back.
 2. Use the return keyword to send back your data.
 */

func rollDice() -> Int {
//    return Int.random(in: 1...6)
    Int.random(in: 1...6)
}

let result = rollDice()
print(result)

/* the above function says that the function must return an integer, and the actual value is sent back with the return keyword. */

func doBothStringsHaveSameLetters(firstString: String, secondString: String) -> Bool {
//    var stringA = firstString.sorted()
//    var stringB = secondString.sorted()
    
//    return stringA == stringB
    
//    return firstString.sorted() == secondString.sorted()
    /* when a function has only one line of code, we can remove the return keyword entirely: */
    firstString.sorted() == secondString.sorted()
    /* remember this only works when your function contains a single line of code, and in particular that line of code must actually return the data you promised to return. */
}

let answer = doBothStringsHaveSameLetters(firstString: "kfjk", secondString: "mnyp")
print(answer)

func pythagoras(a: Double, b: Double) -> Double {
//    let input = a * a + b * b
//    let root = sqrt(input)
//    return root
    sqrt(a * a + b * b)
}

let c = pythagoras(a: 3, b: 4)
print("c")

/*
 if your function doesn't return a value, you can still use return by itself to force the function to exit early. for example, perhaps you have a check that the input matches what you expected, and if it doesn't you want to exit the function immediately before continuing.
 */


// How to return multiple values from functions

/* when you want to return a single value from a function, you write an arrow and a data type before your function's opening brace, like this:  */

func isUppercase(string: String) -> Bool {
    string == string.uppercased()
}

/* If you want to return two or more values from a function, you could use an array:    */

//func getUser() -> [String] {
//    ["Taylor", "Swift"]
//}

//let user = getUser()
//print("Name: \(user[0]) \(user[1])")

/* the best way to return multiple values from a function is to use a tuple. Tuples let us put multiple pieces of data into a single variable, but unlike those other options tuples have a fixed size and can have a variety of data types.
 */

func getUser() -> (firstName: String, lastName: String) {
    (firstName: "Taylor", lastName: "Swift")
}

let user = getUser()
print("Name: \(user.firstName) \(user.lastName)")

/* 
 Tuples have a key advantage over dictionaries: we specify exactly which values will exist and what types they have, whereas dictionaries may or may not contain the values we're asking for.
 
 There are three other important things to know when using tuples.
 
 1. If you're returning a tuple from a function, Swift already knows the names you're giving each item in the tuple, so you don't need to repeat them when using return.
 
 func getUser() -> (firstName: String, lastName: String) {
     ("Taylor", "Swift")
 }
 
 2. sometimes you'll find you're given tuples where the elements don't have names. When this happens you can access the tuple's elements using numerical indices starting from 0, like this:
 
 func getUser() -> (firstName: String, lastName: String) {
     ("Taylor", "Swift")
 }

 let user = getUser()
 print("Name: \(user.0) \(user.1)")
 
 these numerical indices are also available with tuples that have named elements
 
 3. If a function returns a tuple you can actually pull the tuple apart into individual values if you want to.
 
 func getUser() -> (firstName: String, lastName: String) {
     (firstName: "Taylor", lastName: "Swift")
 }

 let user = getUser()
 let firstName = user.firstname
 let lastName = user.lastname
 
 print("Name: \(firstName) \(lastName)")
 
 
 let (firstName, lastName) = getUser()
 print("Name: \(firstName) \(lastName)")
 
 if you don't need all the values from the tuple you can go a step further by using _ to tell Swift to ignore that part of the tuple:
 
 let (firstName, _) = getUser()
 print("Name: \(firstName)")
 
 */


// How to customize parameter labels

func rollDice(sides: Int, count: Int) -> [Int] {
    // Start with an empty array
    var rolls = [Int]()
    
    // Roll as many dice as needed
    for _ in 1...count {
        // Add each result to our array
        let roll = Int.random(in: 1...sides)
        rolls.append(roll)
    }
    
    // Send back all the rolls
    return rolls
}

let rolls = rollDice(sides: 6, count: 4)

func hireEmployee(name: String) { }
func hireEmployee(title: String) { }
func hireEmployee(location: String) { }

let lyric = "I see a red door and I want it painted black"
print(lyric.hasPrefix("I see"))

/*
 when we're defining the parameters for a function we can actually add two names: one for use where the function is called, and one for use inside the function itself. hasPrefix() uses this to specify _ as the external name for its parameter, which is Swift's way of saying "ignore this and causes there to be no external label for that parameter.
 */

func isUppercase(_ string: String) -> Bool {
    string == string.uppercased()
}

let string = "HELLO, WORLD"
let result = isUppercase(string)


/*
 
 */
func printTimesTables(for number: Int) {
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTables(for: 6)


/*
 1. we write for number: Int: the external name is for, the internal name is number, and it's of type Int
 2. When we call the function we use the external name for the parameter
 3. Inside the function we use the internal name for the parameter: print("\(i) x \(number) is \(i * number)")
 
 So, Swift gives us two important ways to control parameter names: we can use _ for the external parameter name so that it doesn't get used, or add a second name there so that we have both external and internal parameter names.
 
 
 technically, values you pass in to a function are called "arguments", and values you receive inside the function are called parameters.
 */


// How to provide default values for parameters

