//import UIKit
//
//var greeting = "Hello, playground"
//import Foundation
//
//let myName = "Ashmit" //cannot be assigned to again, similar to const in JS
//var words = "big" //can be assigned to again
//
//print ("My name is \(myName.lowercased()).")
//print ("My name is \(myName.uppercased()).")
//print ("Number of letters in my name: \(myName.count)")
//
//
//var book: Int = 10
//var cost: Double = 20.23
//
//var totalPrice = Double(book) * cost
//
//print ("Cost of \(book) books is = \(Double(book)*cost)")

//string interpolation and variable explicit declaration
//var message = "Cost of my books are: " + String(totalPrice)
//print(message)

//Interpolation
//message = "Cost of my books are: \(totalPrice)"
//print(message)

//let number: Int = 10
//let constant: Int = 30
//let otherNumber: Double = 90.232
//let otherOtherNumber: Float = 90.32
//let somebodyGuy: String = "Some person"
//
//print ("\(number) \(constant) \(otherNumber) \(otherOtherNumber) \(somebodyGuy)")


//.uppercased() and .lowercased() are used to change the cases of string
//we use : DataType to show what data type will that variable recieve
// .count() is used to count the number of characters in a string
// explicit type casting can be done using braces Double

//Conditional statements
//var timeYouWakeUp = 8
//if timeYouWakeUp == 6{
//    print ("You wake up at 6")
//}
//else{
//    print ("You dont wake up at 6")
//}
//
//switch timeYouWakeUp{
//case 5:
//    print("You wake up at 5")
//case 6:
//    print("You wake up at 6")
//default:
//    print("WAKE UP EARLIER")
//}

//Switch case range case
//var empSalary = 98
//
//switch empSalary {
//case 10000...:
//    print("I will travel to Paris and London cos im rich!")
//case 5000...9999:
//    print("I will travel to Tokyo cos im richer")
//case 1000...4999:
//    print("I will travel to Anhad Vadpav")
//default:
//    print("skill issue")
//}

//Arrays
//var bookCollection = ["book1","book2"]
////declaring an array in swift:
//let size = 10
////declaring an empty array
//var arrayName = [Int](repeating: 0, count: size)
//print(arrayName)
//var anotherArray = [Int](repeating: 20, count: 5)
//print(anotherArray)
//
//var newArray = [10,20,30]
//print("The 0th element of new array is: \(newArray[0])")

//Iterative statements
//for i in 0...5{
//    print(i)
//}
//to iterate through an array however we face an issue, the for loop in swift language will always include both the upper bound and lower bound, hence we would need to have the upper-bound ot be decrement

//let arrayInit = [10,20,30,40,50]
//for element in 0...arrayInit.count - 1{
//    print(element)
//}

//However we would not need to do this and can directly implement for...in loop using element in arrayName and have the element variable iterate over the array allowing us to iterate through the array without the decrement of upper-bound element
//var i = 0
//var arrayInit2 = [11,32,43,14,57]
//for element in arrayInit2{
//    print ("The element at index: \(i) is: \(element)")
//    i+=1
//}
//
//Dictornaries in swift use key value pairs where we can access each value using its unique key that has been declared previously
//(key, value)
//var dictionaryName = ["key1":"value1","key2":"value2","key3":"value3",]
//for (keyName, valueName) in dictionaryName{
//    print("for the key: \(keyName) we have a value assigned as: \(valueName)")
//}

//when creating any kind of variable, constant, array, dictionary in swift it will auto detect the datatype for the same, but it is generally good practice to ensure that we have added our own explict data type

//var variableCreated: Int = 10
//let constantCreated: Int = 20
//let arraySize: Int = 5
//var arrayCreated = [Int](repeating: 0, count: arraySize)
//var dictionaryCreated: [Int: String] = [1:"Value1", 2:"Value2"]

// let userName: String? = nil
// //this defines that the userName is either a String or it is nil
// let displayName = userName ?? "Guest"
// //if userName is nil then it will Guest if not nil then it will take the value in userName
// print(displayName)


//Closue is a block of code that can be passed around and executed whenever needed

// let closureCreated = {
//     print("You have called the closure, similar to a function")
// }

// closureCreated()

// functions
// func function(name: String){
//     print("Welcome \(name)")
// }
// function(name: "Somebody")

// func checkAge(age: Int){
//     guard age >= 18 else {
//         print("you are underage")
//         return
//     }
//     print("you are of age")
// }

// checkAge(age: 9)
// checkAge(age: 90)

func userLoggedIn(name: String?){
    //check for nil coalescnce
    let loggedOnUser = name ?? "guest"
    print("You are now logged in as \(loggedOnUser)")
}
userLoggedIn(name: "Somebody")
userLoggedIn(name: nil)

