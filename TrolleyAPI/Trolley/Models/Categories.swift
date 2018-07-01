//
//  Categories.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class CategoryResponseDataModel: NSObject,Codable {

      public  var image: String!
      public  var categoryId: String!
      public  var parentId: String!
      public  var ischild: String!
      public  var name: String!
      public  var sortOrder: String!
        private enum CodingKeys: String, CodingKey {
            case image
            case categoryId = "category_id"
            case parentId = "parent_id"
            case ischild
            case name
            case sortOrder = "sort_order"
        }
    
   
}



