import UIKit


//Without Generics
func swapToInts(_ a : inout Int,_ b: inout Int){
    let tempA = a
    a = b
    b = tempA
}

var someInt = 3
var anotherInt = 109
swapToInts(&someInt,&anotherInt)

print("SomeInt is now \(someInt), and anotherInt is now\(anotherInt)")

//Same function with Generics
func swap<T>(_ a: inout T, _ b: inout T){
    
    let tmp = a
    a = b
    b = tmp
}

//swap("Hello", "World")

var someString = "Swift"
var anotherString = "Generics"

swap(&someString, &anotherString)
print("SomeString is now \(someString), and anotherString is now\(anotherString)")
