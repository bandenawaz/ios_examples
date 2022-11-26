import UIKit

class StudentDetails{
    
    var stName: String!
    var mark1: Int!
    var mark2: Int!
    var mark3: Int!
    
    //lets initialise the properties
    init(stNanme: String, mark1: Int, mark2: Int, mark3: Int) {
        
        self.stName = stNanme
        self.mark1 = mark1
        self.mark2 = mark2
        self.mark3 = mark3
    }
    
    func display(){
        print("Student Name: \(stName),Mark1: \(mark1), Mark2: \(mark2), Mark3:\(mark3)")
    }
}

//lets extend the base class
class Stud1 : StudentDetails{
    
    init() {
        super.init(stNanme:"Sachin Tendulkar",mark1:98,mark2:87,mark3:79)
    }
}
let details = Stud1()
details.display()

//Overidnig the methods
class Cricket{
    func play(){
        print("Let play Cricket")
    }
}


class TennisBall: Cricket{
    
    override func play() {
        print("Let play tennisball Cricket")
    }
}

let crikInst = Cricket()
crikInst.play()

let tnsInst = TennisBall()
tnsInst.play()
