//
//  Categories.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class CategoryResponseDataModel: NSObject,Codable {

      public  var image     : String?
      public  var categoryId: String!
      public  var parentId  : String!
      public  var ischild   : String!
      public  var name      : String!
      public  var sortOrder : Int!
        private enum CodingKeys: String, CodingKey {
            case image
            case categoryId = "category_id"
            case parentId = "parent_id"
            case ischild
            case name
            case sortOrder = "sort_order"
        }
    
    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self) // defining our (keyed) container
        
       image          =   try? container.decode(String.self, forKey: CodingKeys.image      )
       categoryId     =   try! container.decode(String.self, forKey: CodingKeys.categoryId )
       parentId       =   try! container.decode(String.self, forKey: CodingKeys.parentId   )
       ischild        =   try! container.decode(String.self, forKey: CodingKeys.ischild    )
       name           =   try! container.decode(String.self, forKey: CodingKeys.name       ).htmlUnescape()
       let ssortOrder      =   try! container.decode(String.self, forKey: CodingKeys.sortOrder  )
       sortOrder           = Int(ssortOrder)
        
        
        
    }
   
}



