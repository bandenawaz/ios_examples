import UIKit

struct Number {
    
    var digits : Int
    //let pi = 3.145
    let numbers = 3.1415
}

var n = Number(digits: 12345)
n.digits = 67

print("\(n.digits)")
//print("\(n.pi)")

//for constant structures
var m = Number(digits: 54321)
m.digits = 87

print("\(n.digits)")
print("\(n.numbers)")

//m.numbers = 8.7

//Lazy stored Property

class Sample{
    lazy var no = number()
}

class number{
    
    var name = "Swift 5 using XCode"
    
}

var fName = Sample()
print(fName.no.name)
