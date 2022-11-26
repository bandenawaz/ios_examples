import UIKit

//Defining enum the name should always be Uppercase
enum Planets {
    
    case mercury, mars, jupiter
    case venus, saturn
    case earth, netpune
}

//accessing the enum
var planetWeLive = Planets.earth
var furthestPlanet = Planets.netpune
planetWeLive = .mars

//traditional comparsion
if (planetWeLive == .earth){
    print("Earth it is")
}
/*
//Using switch statement
switch planetWeLive{
    case .mercury:
        print("Mercury is very hot to live")
        
    case .mars:
        <#code#>
    case .jupiter:
        <#code#>
    case .venus:
        <#code#>
    case .saturn:
        <#code#>
    case .earth:
        <#code#>
    case .netpune:
        <#code#>
}
*/
//enum of raw types
enum Devices: String{
    case MusicPlayer = "iPod"
    case Phone = "iPhone"
    case Tablet = "iPad"
    case money = "DadPaid"
}

print("We are using an \(Devices.Tablet.rawValue)")
