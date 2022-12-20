//
//  ContentView.swift
//  SwitftUISegueApp
//
//  Created by Bandenawaz Bagwan on 01/12/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            VStack{
                
                Text("Main Content View")
                    .font(.largeTitle)
                    .fontWeight(.medium)
                    .foregroundColor(.red)
                
                Spacer()
                NavigationLink(destination:SecondView()){
                    Text("NextView")
                        .frame(minWidth: 0, maxWidth: 300)
                        .padding()
                        .foregroundColor(.white)
                        .background(LinearGradient(gradient: Gradient(colors: [.red, .blue]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(40)
                        .font(.title)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
