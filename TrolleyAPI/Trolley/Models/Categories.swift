//
//  Categories.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class CategoryResponseDataModel: Codable {

        var image: String!
        var categoryId: String!
        var parentId: String!
        var ischild: String!
        var name: String!
        var sortOrder: String!
        private enum CodingKeys: String, CodingKey {
            case image
            case categoryId = "category_id"
            case parentId = "parent_id"
            case ischild
            case name
            case sortOrder = "sort_order"
        }
    
   
}



