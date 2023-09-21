
// TYPE ANNOTATIONS

/* Swift is able to figure out what type of data a constant or variable holds based on what we assign to it. However, sometimes we don't want to assign a value immediately, or sometimes we want to override Swift's choice of type, and that's where type annotations come in. */

// type inference
let surname1 = "Lasso"
var score1 = 0

// type annotation 👇🏽
let surname: String = "Lasso"
var score: Int = 0

/* type annotations let us be explicit about what data types we want*/


var teams: [String] = [String]() // an array of empty strings

var cities: [String] = []

var clues = String()

/* Values of an enum have the same type as the enum itself, so we could write something like this: */

enum UIStyle {
    case light, dark, system
}

var style = UIStyle.light

/* this is what allows Swift to remove the enum name for future assignments, so we can write style = .dark -  it knows any new value for style must be some kind of UIStyle */

style = .system

/*
 when should you use type annotations:
 preferably for when you have constants you don't have a value for yet
 */

let username: String

username = "femialiu"
print(username)

/*
 regardless of whether you use type inference or type annotation, there is one golden rule: Swift must at all times know what type of data types your constants and variables contain. this is at the core of being a type-safe language
 
 Although type annotation can let us override Swift's type inference to a degree, our finished code must still be possible.
 */


// COMPLEX DATA SUMMARY

/*
 Arrays let us store lots of values in one place, then read them out using integer indices. Arrays must always be specialized so they contain one specific type, and they have helpful functionality such as count, append(), and contains().
 
 Dictionaries also let us store lots of values in one place, but let us read them out using keys we specify. they must be specialized to have one specific type for key and another for the value, and have similar functionality to arrays, such as contains() and count
 
 Sets are a third way of storing lots of values in one place, but we don't get to choose the order in which they store those items. Sets are really efficient at finding whether they contain a specific item.
 
 Enums let us create our own simple types in Swift so that we can specify a range of acceptable values such as a list of actions the user can perform, the types of files we are able to write, or the types of notification to send the user.
 
 Swift must always know the type of data inside a constant or variable, and mostly uses type inference to figure that out based on the data we assign. However, it's also possible to use type annotation to force a particular type.
 
 
 */


// Checkpoint 2: 
