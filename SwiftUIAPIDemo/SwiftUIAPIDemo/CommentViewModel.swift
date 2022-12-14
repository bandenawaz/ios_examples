//
//  CommentViewModel.swift
//  SwiftUIAPIDemo
//
//  Created by Bandenawaz Bagwan on 01/12/22.
//

import Foundation

class ApiCall{
    
    func getUserComments(completion: @escaping([Comments]) -> ()){
        
        guard let url = URL(string: "https://jsonplaceholder.typicode.com/todos/1/comments") else { return
            
        }
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            let comments = try! JSONDecoder().decode([Comments].self, from: data!)
            print(comments)
            
            DispatchQueue.main.async {
                completion(comments)
            }
        }.resume()
    }
}
