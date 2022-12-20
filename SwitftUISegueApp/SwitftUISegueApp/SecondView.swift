//
//  SecondView.swift
//  SwitftUISegueApp
//
//  Created by Bandenawaz Bagwan on 01/12/22.
//

import SwiftUI

struct SecondView: View {
    var msg: String = "Hello, i am Second view. Welcome!"
    var body: some View {
        Text(msg)
            .font(.title)
            .fontWeight(.medium)
            .foregroundColor(.accentColor)

            
           
        
    }
    
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}
