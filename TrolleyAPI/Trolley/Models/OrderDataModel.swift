//
//  OrderDataModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class OrderDetailsRequestDataModel:NSObject, Codable {
    public var orderId: String? = nil
    private enum CodingKeys: String, CodingKey {
        case orderId = "order_id"
    }
}
@objc public class OrderDetailsResponseDataModel: NSObject,Codable {

     @objc  public class Item:NSObject, Codable {
          public  var orderProductId: String!
           public var orderId  : String!
           public var productId: String!
          public  var name: String!
          public  var model: String!
          public  var quantity: String!
          public  var price: String!
           public var total: String!
          public  var tax: String!
          public  var edit: String!
          public  var refund: String!
            private enum CodingKeys: String, CodingKey {
                case orderProductId = "order_product_id"
                case orderId = "order_id"
                case productId = "product_id"
                case name
                case model
                case quantity
                case price
                case total
                case tax
                case edit
                case refund
            }
        }
      @objc  public var items: [Item]? = nil
            @objc  public class Subitem: NSObject,Codable {
            public var orderTotalId: String!
            public var orderId: String!
            public var code: String!
            public var title: String!
            public var text: String!
            public var value: String!
            public var sortOrder: String!
            private enum CodingKeys: String, CodingKey {
                case orderTotalId = "order_total_id"
                case orderId = "order_id"
                case code
                case title
                case text
                case value
                case sortOrder = "sort_order"
            }
        }
        public var subitems: [Subitem]? = nil
  
}


