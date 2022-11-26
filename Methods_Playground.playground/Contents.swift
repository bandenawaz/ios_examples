import UIKit

class Counter{
    
    var count = 0
    
    func incre(){
        count += 1
    }
    
    func incre(amount: Int){
        count += amount
    }
    
    func reset(){
        count = 0
    }
    
    
}

let counter = Counter()
//initial counter value is 0
counter.incre()

//Now the counter's value is now 1
counter.incre(amount:5)
//the counter value is 6
print(counter.count)
