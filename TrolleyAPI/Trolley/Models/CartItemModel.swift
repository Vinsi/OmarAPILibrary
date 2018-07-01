//
//  CartItemModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class CartItemModel:NSObject,Codable{
    
   
        public var productId: String?
        public var quantity: Int?
        private enum CodingKeys: String, CodingKey {
            case productId = "product_id"
            case quantity
    
        }
    
    
}
@objc public class CartItemDataRequestModel:NSObject,Codable{
    
    public var itemsOrdered:[CartItemModel]?
    
    private enum CodingKeys: String, CodingKey {
        case itemsOrdered = "order_items"
    
        
    }
    
    
}
