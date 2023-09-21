/* Arrays */

var beatles = ["John", "Paul", "George", "Ringo"]
let numbers = [4, 8, 15, 16, 23, 42]
var temperatures = [25.3, 28.2, 26.4]

/* when it comes to reading values out from an array, we ask for values by the position they appear in the array. The position of an item in an array is commonly called its index.
 Swift counts an item's index from zero rather than one.
 */
print(beatles[1])
print(numbers[3])
print(temperatures[0])

/* make sure an item exists at the index you're asking for, otherwise your code will crash */

/* if your array is a variable, you can modify it after creating it. You use append() to add new items*/

beatles.append("Allen")
beatles.append("Grant")
beatles.count
print(beatles[4])

var scores = Array<Int>()
scores.append(100)
scores.append(80)
scores.append(85)
print(scores[1])


//var albums = Array<String>()
//albums.append("Folklore")
//albums.append("Fearless")
//albums.append("Red")

var albums = [String]()
albums.append("Folklore")
albums.append("Fearless")
albums.append("Red")
print(albums)
print(albums.count)

var characters = ["Lana", "Pam", "Ray", "Sterling"]
characters.remove(at: 0)
print(characters.count)
characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No time to die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

/* the above returns a new array with it's items sorted in ascending order, which means alphabetically for strings but numerically for numbers - the original array remains unchanged. 

 You can reverse an array by calling reversed() on it:
 */
let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)

/*
 when you reverse an array, Swift is very clever - it doesn't actually do the work of rearranging all the items, but instead just remembers to itself that you want the items to be reversed. So, when you print out reversedPresidentss, don't be surprised to see it's not just a simple array anymore
 
 Arrays are extremely common in Swift, and you'll have lots of opportunity to learn more about them as you progress. Even better sorted(), reversed(), and lots of other array functionality also exist for strings - using sorted() there puts the string's letters in alphabetical order, making something like "swift" into "fistw"
 */


let char = "swift"
char.sorted()

// DICTIONARIES

/* arrays are a great way to store data that has a particular order, such as days of the week or temperatures for a city. Arrays are a great choice when items should be stored in the order you add them, or when you might have duplicate items in there, but very often accessing data by its position in the array can be annoying or even dangerous
 */

var employee = ["Taylor Swift", "Singer", "Nashville"]

/* dictionaries don't store items according to their position like arrays do, but instead let us decide where items should be stored:
 */

// the strings on the left are the keys, the strings on the right are values
let employee2 = [
    "name": "Taylor Swift", 
    "job": "Singer",
    "location": "Nashville"
]

print(employee2["name"])
print(employee2["job"])
print(employee2["location"])

/*
 when you access data inside a dictionary, it will tell us "you might get a value back, but you get back nothing at all". Swift calls these optionals because the existence of data is optional - it might be there or it might not.
 
 "Expression implicitly coerced from 'String' to 'Any', but it really means "this data might not actually be there - are you sure you want to print it?"
 
 when reading from  a dictionary, you can provide a default value to use if the key doesn't exist:
 */

print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])

/*
 All of the above examples have used strings for both keys and values, but you can use other data types for either of them.
 */
let hasGraduated = [
    "Eric": false,
    "Maeve": true,
    "Otis": false
]

let olympics = [
    2012: "London",
    2016: "Rio de Janeiro",
    2021: "Tokyo"
]

/* 
 You can also create an empty dictionary using whatever explicit types you want to store then set keys one by one
 */

var heights = [String: Int]()   // strings for keys, integers for values
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["Lebron James"] = 206

/*
 Because each dictionary item must exist at one specific key, dictionaries don't allow duplicate keys to exist. Instead, if you set a value for a key that already exists, Swift will overwrite whatever was the previous value.
 */

var archEnemies = [String: String]()
archEnemies["Batman"] = "The Joker"
archEnemies["Superman"] = "Lex Luthor"

archEnemies["Batman"] = "Penguin"

print(archEnemies)

/* dictionaries also come with count and removeAll() functionality */



// SETS

/* Sets are similar to arrays, except you can't add duplicate items, and they don't store their items in a particular order.
 Creating a set works much like creating an array: tell Swift what kind of data it will store, then go ahead and add things.
 */

let people = Set(["Denzel Washington", "Tom Cruise", "Nicolas Cage", "Samuel L Jackson"])

print(people)

var people1 = Set<String>()
people1.insert("Denzel Washington")
people1.insert("Tom Cruise")
people1.insert("Nicolas Cage")
people1.insert("Samuel L Jackson")

/*
 Notice how we're using insert()? When we had an array of strings, we added items by calling append(), but that name doesn't make sense here - we aren't adding an item to the end of the set, because the set will store the items in whatever order it wants.
 
 instead of storing your items in the exact order you specify, sets instead store them in a highly optimized order that makes it very fast to locate items.
 
 the following  functions also work with sets: contains(), count, sorted()
 */


// ENUMS

/*
 enum - short for enumeration - is a set of named values we can create and use in our code. They don't have any special meaning to Swift, but they are more efficient and safer, so you'll use them a lot in your code.
 */


var selected = "Monday"

/* enums let us define a new data type with a handful of specific values that it can have. Think of a Boolean, that can only have true or false - you can't set it to "maybe" or "probably", because that isn't in the range of values it understands. Enums are the same: we get to list up front the range of values it can have, and Swift will make sure you never make a mistake using them.   */


//enum Weekday {
//    case monday
//    case tuesday
//    case wednesday
//    case thursday
//    case friday
//}

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

/* the above code calls the new enum Weekday, and provides five cases to handle the five weekdays */

var day = Weekday.monday
day = Weekday.tuesday
day = Weekday.friday

/* remember that once you assign a value to a variable or constant, its data type becomes fixed - you can't set a variable to a string at first, then an integer later on. Well, for enums this means you can skip the enum name after the first assignment, like this: 👇🏽
 */

//var day = Weekday.monday
day = .tuesday
day = .friday

/* Swift knows that .tuesday must refer to Weekday.tuesday because day must always be some kind of Weekday.

 one major benefit of enums is that Swift stores them in an optimized form - when we say Weekday.monday Swift is likely to store that using a single integer such as 0, which is more efficient to store and check than the letters M, o, n, d, a, y
 */
