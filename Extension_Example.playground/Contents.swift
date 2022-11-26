import UIKit

extension Double {
    var km : Double{
        return self * 1000.0
    }
    
    var mtr: Double{
        return self
    }
    
    var cm: Double{
        return self/100.0
    }
    
    var mm: Double{
        return self/1000.0
    }
    
    var ft: Double{
        return self/3.28084
    }
}

let oneInch = 25.4.mm
print("One Inch is \(oneInch) meters")

//lets run a marathon by addiing km an mtr
let marathon = 58.km + 785.mtr

print("I ran a marathon of \(marathon) meters in a day")

