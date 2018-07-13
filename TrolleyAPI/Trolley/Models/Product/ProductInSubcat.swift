//
//  ProductInSubcat.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class ProductsInCategoryRequestDataModel:NSObject, Codable {
    public var categoryId: String? = nil
    private enum CodingKeys: String, CodingKey {
        case categoryId = "category_id"
    }
}
@objc public class ProductsInCategoryResponseDataModel: NSObject,Codable {
    
    public var rows: [ItemModel]!
    public class Maincategoryinfo: NSObject,Codable {
        public var categoryId: String!
        public var image: String!
        public var parentId: String!
        public var top: String!
        public var column: String!
        public var sortOrder: String!
        public var status: String!
       
        public var urlAlias: String!
    
        public var languageId: String!
        public var name: String!
     
    
        public var bannerId: String!
        public var bannerName: String!
   
        private enum CodingKeys: String, CodingKey {
            case categoryId = "category_id"
            case image
            case parentId = "parent_id"
            case top
            case column
            case sortOrder = "sort_order"
            case status
       
            case urlAlias = "url_alias"
        
            case languageId = "language_id"
            case name
          
       
            case bannerId = "banner_id"
            case bannerName = "banner_name"
      
        }
    }
    public var maincategoryinfo: Maincategoryinfo!
}
//:MARK
