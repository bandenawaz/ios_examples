import UIKit

//lets create struture called Celsius
struct Celsius{
    
    var tmpInCelsius : Double
    
    //lets initialize the variable
    init(fahrenheit: Double){
        
        tmpInCelsius = (fahrenheit - 32) / 1.8
        
    }
    
    init(kelvin: Double){
        tmpInCelsius = kelvin - 273.15
    }
}

let boilingPointOfWater = Celsius(fahrenheit: 212.0)
print(boilingPointOfWater)

let freezingPointOfWater = Celsius(kelvin: 273.15)
print(freezingPointOfWater)
