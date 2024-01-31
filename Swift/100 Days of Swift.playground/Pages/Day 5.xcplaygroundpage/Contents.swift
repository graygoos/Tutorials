
// CONDITIONS

// How to check a condition is true or false

/*
 Programs very often make choices:
 - If the student's exam score was over 80 then print a success message, etc
 
 Swift handles these with if statements, which let us check a condition and run some code if the condition is true.
 
 */

let someCondition = false

if someCondition {
    print("Do something")
}

let score = 85

if score > 80 {
    print("Great job")
}

// the > symbol is a comparison operator, because it compares two things and returns a Boolean result

let speed = 88
let percentage = 85
let age = 18

if speed >= 88 {
    print("Where we're going we don't need roads.")
}

if percentage < 85 {
    print("sorry, you failed the test.")
}

if age >= 18 {
    print("You're eligible to vote.")
}


let ourName = "Femi Aliu"
let friendName = "Shehu Sani"

if ourName < friendName {
    print("It's \(ourName) vs \(friendName))")
}

if ourName > friendName {
    print("It's \(friendName) vs \(ourName)")
}


// Make an array of 3 numbers
var numbers = [1, 2, 3]

// Add a 4th
numbers.append(4)

// If we have over 3 items
if numbers.count > 3 {
    // Remove the oldest number
    numbers.remove(at: 0)
}

print(numbers)


let country = "Canada"

if country == "Australia" {
    print("G'day!")
}


let name = "Taylor Swift"

if name != "Anonymous" {
    print("Welcome, \(name)")
}


// Create the username variable
var username = "taylorswift13"

// If 'username' contains an empty string
if username == "" {
    // Make it equal to "Anonymous"
    username = "Anonymous"
}

// Now print a welcome message
print("Welcome, \(username)")


if username.count == 0 {
    username = "Anonymous"
}

if username.isEmpty == true {
    username = "Anonymous"
}

if username.isEmpty {
    username = "Anonymous"
}


// How to check multiple conditions

let age1 = 16

if age1 >= 18 {
    print("You can vote in the next election.")
} else {
    print("Sorry, you're too young to vote.")
}

if someCondition {
    print("This will run if the condition is true")
} else {
    print("This will run if the condition is false")
}

let a = false
let b = true

if a {
    print("code to run if a is true")
} else if b {
    print("code to run is b is true")
} else {
    print("code to run if both a and b are false")
}

let temp = 25

//if temp > 20 {
//    if temp < 30 {
//        print("It's a nice day.")
//    }
//}

if temp > 20 && temp < 30 {
    print("It's a nice day.")
}

// && || - logical operators because they combine Booleans to make a new Boolean

let userAge = 14
let hasParentalConsent = true

if userAge >= 18 || hasParentalConsent {
    print("You can buy the game")
}

enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly")
} else if transport == .bicycle {
    print("I hope there's a bike path...")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}


// How to use switch statements to check multiple conditions

enum Weather {
    case sun, rain, wind, snow, unknown
}

let forecast = Weather.sun

switch forecast {
case .sun:
    print("It should be a nice day")
case .rain:
    print("Pack an umbrella")
case .wind:
    print("Wear something warm")
case .snow:
    print("School is cancelled")
case .unknown:
    print("Our forecast generator is broken!")
}

/*
 All switch statements must be exhaustive, meaning that all possible values must be handled in there so you can't leave one off by accident.
 Swift will execute the first case that matches the condition you're checking, but no more. Other languages often carry on executing other code from all subsequent cases, which is usually entirely the wrong default thing to do.
 */

let place = "Metropolis"

switch place {
case "Gotham":
    print("You're Batman!")
case "Mega-City One":
    print("You're Judge Dredd")
case "Wakanda":
    print("You're Black Panther")
default:
    print("Who are you?")
}

/*
 Swift checks its cases in order and runs the first one that matches. If you place default before any other case, that case is useless because it will never be matched and Swift will refuse to build your code.
 
 Also, if you explicitly want Swift to carry on executing subsequent cases, use fallthrough. This is not commonly used, but sometimes - just sometimes- it can help you avoid repeating work.
 */

let day = 5
print("My true love gave to me...")

switch day {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}



// How to use the ternary conditional operator for quick tests

/*
 +, -, ==, and so on are all called binary operators because they work with two pieces of input: 2 + 5, for example, works with 2 and 5
 
 Ternary operators work with three pieces of input, and in fact because the ternary conditional operator is the only ternary operator in Swift, you'll often hear it called just "the ternary operator."
 
 The ternary operator lets us check a condition and return one of two values: something if the condition is true, and something if it's false.
 */

let age2 = 18
let canVote = age2 >= 18 ? "Yes" : "No"

/*          W : T : F
 
 
 */

let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")


let names1 = ["Jayne", "Kaylee", "Mal"]
let crewCount = names1.isEmpty ? "No one" : "\(names1.count) people"
print(crewCount)



