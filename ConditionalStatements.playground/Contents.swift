import UIKit

let team1Score = 7
let team2Score = 8

if(team1Score > team2Score){
    print("Team 1 won")
}else{
    print("Team 2 is won")
}

//guard statement
var x = 9
if (x > 10){
    //functional code here
}else{
    //Do other conditions
}

func guardFn(str: String?){
    
    guard let goodStr = str else {
        print("Input was nill")
        return
    }
    print("Input was \(goodStr)")
}

//Switch
var speed = 200
switch speed{
    case 300:
        print("Speed of Light")
    case 340:
        print("Speed of Sound")
    default:
        print("unknown Speed")
}

//Match on wildcard
let myNumber = 6

switch myNumber{
    case _ where myNumber.isMultiple(of: 2):
        print("Multiple of 2")
    case _ where myNumber.isMultiple(of: 3):
        print("Multiple of 3")
    
    default:
        print("No match")
}

