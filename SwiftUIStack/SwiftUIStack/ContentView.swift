//
//  ContentView.swift
//  SwiftUIStack
//
//  Created by Bandenawaz Bagwan on 30/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            HStack(spacing: 15) {
                PricingView(title: "Basic", price: "$10", txtColor: .white, bgColor: .purple)
                ZStack{
                    PricingView(title:"Pro", price: "$20", txtColor: .black, bgColor: Color(red: 240/255, green: 240/255, blue: 240/255))
                    
                    Text("Best for Designers")
                        .font(.system(.caption, design: .rounded))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color(red: 255/255, green: 183/255, blue: 37/255))
                        .offset(x:0, y: 77)
                    
                }
                
                
                
            }
            
        }
        
        
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HeaderView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10){
            Text("Choose")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
            
            Text("Your Plan")
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
        }
    }
}

    
    struct PricingView: View{
        
        var title: String
        var price: String
        var txtColor: Color
        var bgColor: Color
        
        var body: some View{
            VStack{
                Text(title)
                    .font(.system(.title, design: .rounded))
                    .fontWeight(.black)
                    .foregroundColor(txtColor)
                
                Text(price)
                    .font(.system(size: 40, weight: .heavy, design: .rounded))
                    .foregroundColor(txtColor)
                Text("per month")
                    .font(.headline)
                    .foregroundColor(txtColor)
            }
            .frame(minWidth: 0, maxWidth: .infinity, minHeight: 100)
            .padding(40)
            .background(bgColor)
            .cornerRadius(10)
                
        }
            
    }
}
