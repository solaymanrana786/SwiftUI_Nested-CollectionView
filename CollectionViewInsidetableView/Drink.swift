//
//  Drink.swift
//  Nested tableView Demo SwiftUI
//
//  Created by Rana AITS on 3/11/20.
//  Copyright © 2020 Rana AITS. All rights reserved.
//

import Foundation
import SwiftUI

struct Drink: Hashable,Codable,Identifiable {
    var id:Int
    var name:String
    var imageName:String
    var category: Category
    var description:String
    
    enum Category: String,Codable,Hashable,CaseIterable {
        case hot = "hot"
        case cold = "cold"
        case normal = "normal"
    }
    
}
