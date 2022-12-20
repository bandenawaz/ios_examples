//
//  ContentView.swift
//  SwiftUiButtonState
//
//  Created by Bandenawaz Bagwan on 30/11/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var counter = 0
    
    var body: some View {
        Button(action: {
            //lets toggle the buttonn's state
            self.counter += 1
            
        }){
            Circle()
                .frame(width: 200, height: 200)
                .foregroundColor(.red)
                .overlay(
                    Text("\(counter)")
                        .font(.system(size: 100, weight: .bold, design: .rounded))
                        .foregroundColor(.white)
                )
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
