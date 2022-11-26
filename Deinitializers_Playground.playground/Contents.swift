import UIKit

class Bank{
    static var coinsInBank = 10000
    
    static func distribute(coin numberOfCoinsRequested: Int) -> Int{
        
        let numberOfCoinToVend = min(numberOfCoinsRequested, coinsInBank)
        coinsInBank -= numberOfCoinToVend
        return numberOfCoinToVend
    }
    
    static func recieve(coin: Int){
        coinsInBank += coin
    }
}

class Player{
    
    var coinsInPurse: Int
    init(coins: Int){
        coinsInPurse = Bank.distribute(coin: coins)
    }
    
    func win(coins: Int){
        coinsInPurse += Bank.distribute(coin: coins)
    }
    
    deinit {
        Bank.recieve(coin: coinsInPurse)
    }
    
    
}
var playerOne: Player? = Player(coins:100)
print("A new player has joined the game with \(playerOne!.coinsInPurse) coins")

//let print what happens when playerOne wins 2000 coins and display the
//remaining purse balance in Bank
playerOne!.win(coins: 2000)
print("PlayerOne just won 2000 coins and now has \(playerOne!.coinsInPurse) coins")

print("The bank has now left with only \(Bank.coinsInBank) coins")
