import Cocoa

// Fizz Buzz Challenge
// Using If else statement
for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz")
    }
    else if i.isMultiple(of: 3) {
        print("Fizz")
    }
    else if i.isMultiple(of: 5) {
        print("Buzz")
    }
    else {
        print("\(i)")
    }
}

// Switch Statement // Using Tuple
for i in 1...100 {
    switch (i % 3 == 0, i % 5 == 0) {
    case (true, true):
        print("FizzBuzz")
    case (true, false):
        print("Fizz")
    case (false, true):
        print("Buzz")
    default:
        print(i)
    }
}


print("\n\n\n\n\n\n\n\n\n Using Recursion")
// Using Recursion
func fizzBuzzChallengeUsingRecursion(upto number: Int, current: Int = 1) {
    if current > number {
        return
    }
    
    if current % 3 == 0 && current % 5 == 0 {
        print("FizzBuzz")
    } else if current % 3 == 0 {
        print("Fizz")
    } else if current % 5 == 0 {
        print("Buzz")
    } else {
        print(current)
    }
    
    fizzBuzzChallengeUsingRecursion(upto: number, current: current + 1)
}

fizzBuzzChallengeUsingRecursion(upto: 100)
