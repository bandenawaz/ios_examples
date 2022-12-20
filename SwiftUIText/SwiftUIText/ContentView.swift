//
//  ContentView.swift
//  SwiftUIText
//
//  Created by Bandenawaz Bagwan on 30/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
       Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.")
            .fontWeight(.heavy)
            .font(.custom("Helvetica Neue", size: 25))
            .foregroundColor(.green)
            .multilineTextAlignment(.center)
            .lineLimit(nil)
            .truncationMode(.tail)
            .lineSpacing(10)
            .padding()
            .rotation3DEffect(.degrees(60), axis: (x: 1, y:0, z:0))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
