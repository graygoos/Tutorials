
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
