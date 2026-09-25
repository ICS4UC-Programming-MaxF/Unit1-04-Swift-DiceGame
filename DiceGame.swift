/* 
* The game will generate a random number between 1 and 6. 
* It will then ask the user to guess the number and 
* will keep track of the number of guesses until the user gets the right answer. 
* If the guess is wrong, the program will tell the user if the guess was too high or too low.
* It will then tell the user how many guesses it took to get the right answer.
* @author   MF-ROB
* @version 1.0
* @since   2026-24-09
*/

import Foundation

// Generates a random number from 1 to 6
let secret = Int.random(in: 1...6)
var guess = 0
var guessCount = 0 // Tracks the number of guesses

// User Greeting
print("Hello User! Welcome to the Dice Game.")
print("The program will repeat until you guess correctly.")

repeat { // to loop the program
    print("\nPlease enter a number between 1 and 6: ", terminator: "")

    // Read and validate input
    guard let input = readLine(), let parsedGuess = Int(input) else {
        print("Invalid input! Please enter a number.")
        continue
    }

    guess = parsedGuess
    guessCount += 1 // Increment the guess counter

    // guessing calculations
    if guess < secret {
        print("You guessed too low!")
    } else if guess > secret {
        print("You guessed too high!")
    } else {
        print("You guessed right! YAY!")
        print("It took you \(guessCount) guesses.")
    }

} while guess != secret // the while loop to loop the program