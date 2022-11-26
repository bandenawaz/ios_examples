import UIKit
/*
var msg: String = "Welcome to Swift"
msg = nil
*/
var msg: String? = "Welcome to Swift"
msg = nil

var myMsg: String?
var tstsg: Optional<String> //None, Some(T)

//Internally calculated as
/*
 enum Option<T>{
 case None
 case Some<T>
 */

//Force unwrapping
var myString: String?
myMsg = "Sample Test"
var tst: String = myString!

if myString != nil{
    var test = myString!
    print(test)
}

//Optional Binding
var myTestMsg: String?
myTestMsg = "Space, the final frontier"

if let tempVar = myTestMsg{
    print(tempVar)
}else{
    print("No value")
}


//Optional Chaining
var car: String?
var tire: String?
//var tireSize = car?.tires?.tireSize

////nil coalescing operator
///
var name = "Johnny"
var optA : String?
var optB: String?

optB = "Lever"

var nameA = optA ?? name // Johnny
var nameB = optB ?? name

var c = optA != nil ? optA!: name

