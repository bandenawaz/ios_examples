import UIKit
import Foundation
/*var airports: [String: String] = ["DEL":"Delhi","HYD":"Hyderabad","BLR":"Bengaluru"]
print(airports)

//Accessing and Modifying the Dicitonary
print("The airports dictionary contain \(airports.count) items")

//check with dictionar is empty or not
if(airports.isEmpty){
    print("Dictionary is empty")
}else{
    print("Dictionary contains items")
}

//Adding items to the dictionry
airports["LHR"] = "London"
print(airports)

airports["LHR"] = "London Heathrow"
print(airports)

//lets remove a key value pair
let removedItem = airports.removeValue(forKey: "LHR")
print(airports)

//Iterating over dictionary
for(code, name) in airports{
    print("\(code): \(name)")
}

//just iterate over keys
for code in airports.keys{
    print("Airport code is: \(code)")
}
*/

class Book: NSObject{
    func chapters(){
        
    }
    
    func pages(){
        
    }
}


//ets print the class treeof Bookclass
print((Book.classForCoder()))
print(Book.superclass())

//print(Book.conforms(to: NSObject.self))

//Example for NSNumber
/*
let myNum = NSNumber(value: 854416e+13)
print(myNum.doubleValue)
print(myNum.floatValue)
print(myNum.intValue)

let strA: NSString = "This is a "
print(strA.classForCoder)

//Create mutable string
let strB: NSString = NSString(" mutable string")
var mutableStr = NSMutableString(string: strA)
mutableStr.append(strB as String)
print(mutableStr)


//NSArray
let myArray = NSArray(objects: "Bread", "Butter","Milk","Eggs")
print(myArray.count)
print(myArray.object(at: 2))

var myMutableArr = NSMutableArray(object: NSNumber(265))
myMutableArr.add(NSNumber(45))
print(myArray)
print(myMutableArr)
*/

//Creatinf NSDictionary
let keyA: NSString = "key"
let keyB: NSString = "key"

let myDictionay = NSDictionary(object: "This is a sring literal", forKey: keyA)
print(myDictionay)
print(myDictionay.object(forKey: keyB))
