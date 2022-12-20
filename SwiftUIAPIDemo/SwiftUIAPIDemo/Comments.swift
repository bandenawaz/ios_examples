//
//  Comments.swift
//  SwiftUIAPIDemo
//
//  Created by Bandenawaz Bagwan on 01/12/22.
//

import Foundation
import SwiftUI

struct Comments: Codable, Identifiable{
    
    let id = UUID()
    let name: String
    let email: String
    let body: String
    
}
