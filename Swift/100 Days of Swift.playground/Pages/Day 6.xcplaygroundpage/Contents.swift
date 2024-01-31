
// How to use a for loop to repeat work

let platforms = ["iOS", "macOS", "tvOS", "watchOS"]

for os in platforms {
    print("Swift works great on \(os).")
}

/*
 To make things easier to understand, we give these things common names:
        - We call the code inside the braces the loop body.
        - We call one cycle through the loop body a loop iteration.
        - We call os the loop variable. This exists only inside the loop body, and will change to a new value in the next loop iteration.
 */

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

/*
 Ranges are their own unique data type in Swift.
 
 You can also put loops in loops
 */

for i in 1...12 {
    print("The \(i) times table:")
    
    for j in 1...12 {
        print(" \(j) x \(i) is \(j * i)")
    }
    
    print()
}

// using print() by itself, with no text or value being passed in, will just start a new line. This helps break up our output so it looks nicer on the screen.

// ..<

for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}

print()
print()

/*
 ..< is really helpful for working with arrays, where we count from 0 and often want to count up to but excluding the number of items in the array.
 
 sometimes you want to run some code a certain number of times using a range, but you don't actually want the loop variable - you don't want the i or j, because you don't use it. In such situations you can replace the loop variable with an underscore.
 */

var lyric = "Haters gonna"

for _ in 1...5 {
    lyric += " hate"
    print(lyric)
}

print()

// How to use a while loop to repeat work

/*
 Swift has a second kind of loop called while: provide it with a condition, and a while loop will continually execute the loop body until the condition is false.
 */

var countdown = 10

while countdown > 0 {
    print("\(countdown)...")
    countdown -= 1
}

print("Blast off!")

/*
 while loops are really useful when you don't know how many times the loop will go around.
 */


let id = Int.random(in: 1...1000)

let amount = Double.random(in: 0...1)

// create an integer to store our roll
var roll = 0

// carry on looping until we reach 20
while roll != 20 {
    // roll a new dice and print what it was
    roll = Int.random(in: 1...20)
    print("I rolled a \(roll)")
}

// if we're here it means the loop ended = we got  a 20!
print("Critical hit!")

/*
 for loops are more common when you have a finite amount of data to go through, such as a range or an array, but while loops are really helpful when you need a custom condition.
 */

for _ in 0...3 {
    print("hip hip hooray")
}

//while 0 < 5 {
//    print("I'm counting to 5!")
//}

var counter = 2

while counter < 64 {
    print("\(counter) is a power of 2.")
    counter *= 2
}

var cats: Int = 0

while cats < 10 {
    cats += 1
    print("I'm getting another cat.")
    if cats == 4 {
        print("Enough cats!")
        cats = 10
    }
}


var itemsSold: Int = 0

while itemsSold < 5000 {
    itemsSold += 100
    if itemsSold % 1000 == 1000 {
        print("\(itemsSold) items sold - a big milestone!")
    }
}

var number: Int = 10

while number > 0 {
    number -= 2
    if number % 2 == 0 {
        print("\(number) is an even number.")
    }
}


// How to skip loop items with a break and continue

/*
 Swift gives us two ways to skip one or more items in a loop: continue skips the current loop iteration, and break skips all remaining iterations. Like while loops these are sometimes used, but in practice much less than you might think.
 
 when you're looping over an array of data, Swift will take out one item from the array and execute the loop body using it. If you call continue inside that loop body, Swift will immediately stop executing the current loop iteration and jump to the next item in the loop, where it will carry on as normal. This is commonly used near the start of loops, where you eliminate loop variables that don't pass a test of your choosing.
 */


let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(filename)")
}


let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)
        
        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)

/* 
 use continue when you want to skip the rest of the current loop iteration, and use break when you want to skip all remaining loop iterations
 */


// Summary: Conditions and Loops
/*
 -  we use if statements to check a condition is true. You can pass in any condition you want, but ultimately it must boil down to a Boolen.
 -  if you want, you can add an else block, and/or multiple else if blocks to check other conditions. Swift executes these in order
 -  you can combine conditions using ||, which means that the whole condition is true if either subcondition is true, or &&, which means the whole condition is true if both subconditions are true.
 -  if you're repeating the same kinds of check a lot, you can use switch statement instead. These must always be exhaustive, which might mean adding a default case.
 -  if one of your switch cases uses fallthrough, it means Swift will execute the following afterwards. This is not used commonly.
 -  The ternary conditional operator lets us check WTF: What, True, False. Although it's a little hard to read first, you'll see this used a lot in SwiftUI
 -  for loops let us loop over arrays, sets, dictionaries, and ranges. You can assign items to a loop variable and use it inside the loop, or you can use underscore, _, to ignore the loop variable
 -  while loops let us craft custom loops that will continue running until a condition becomes false.
 -  we can skip some or all loop items using continue or break respectively.
 */


// Checkpoint 3:




            
        
