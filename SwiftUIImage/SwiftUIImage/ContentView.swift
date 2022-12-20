//
//  ContentView.swift
//  SwiftUIImage
//
//  Created by Bandenawaz Bagwan on 30/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("paris")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .overlay(
               Rectangle()
                .foregroundColor(.black)
                .opacity(0.4)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
