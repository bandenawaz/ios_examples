//
//  ContentView.swift
//  SwiftUIAPIDemo
//
//  Created by Bandenawaz Bagwan on 01/12/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var comments = [Comments]()
    var body: some View {
        
        NavigationView{
            List(comments) { comment in
                VStack(alignment: .leading){
                    
                    Text(comment.name)
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text(comment.email)
                        .font(.subheadline)
                        .fontWeight(.bold)
                    
                    Text(comment.body)
                        .font(.body)
                }
            }
            .onAppear(){
                ApiCall().getUserComments{ (comments) in
                    self.comments = comments
                }
            }.navigationTitle("Coments")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
