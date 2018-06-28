//
//  OrderDataModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class OrderDetailsRequestDataModel: Codable {
    var orderId: String? = nil
    private enum CodingKeys: String, CodingKey {
        case orderId = "order_id"
    }
}
class OrderDetailsResponseDataModel: Codable {

        class Item: Codable {
            var orderProductId: String!
            var orderId  : String!
            var productId: String!
            var name: String!
            var model: String!
            var quantity: String!
            var price: String!
            var total: String!
            var tax: String!
            var edit: String!
            var refund: String!
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
        var items: [Item]? = nil
        class Subitem: Codable {
            var orderTotalId: String!
            var orderId: String!
            var code: String!
            var title: String!
            var text: String!
            var value: String!
            var sortOrder: String!
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
        var subitems: [Subitem]? = nil
  
}


