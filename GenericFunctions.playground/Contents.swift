import UIKit

let intArray = [1,2,3,4,5,6,7,8]
let alphabetArray = ["a","b","c","d","e","f","g"]

// _ >> Allows you to omit the argument name when calling the function

func findLetterIndex (_ array:[String], letter:String) -> Int? {
    
    // If you need the integer index of each item as well as its value, use the enumerate() method to iterate over the array instead.
    
    for (index, element) in array.enumerated() {
        if element == letter {
            return index
        }
    }
    return nil
}

// If you make findLetterIndex(intArray, letter: 7) you will have an error as this method has an array of strings not integers so there is a flexible generic way
findLetterIndex(alphabetArray, letter: "f")


/* Comparable protocol extends the Equatable protocol
   Don't put the operation implementations within the class, but rather on the outside/global scope
   you only have to implement the < operator from Comparable protocol and == from Equatable protocol
 */

func linearSearch<T:Comparable> (_ array:[T], key:T) -> Int? {
    
    // If you need the integer index of each item as well as its value, use the enumerate() method to iterate over the array instead.
    
    for (index, element) in array.enumerated() {
        if element == key {
            return index
        }
    }
    return nil
}

linearSearch(intArray, key: 7)
linearSearch(alphabetArray, key: "d")
