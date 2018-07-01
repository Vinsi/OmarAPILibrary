//
//  ItemSearchModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 27/06/2018.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class ItemSearchModel: NSObject,Codable {
    var productId: String!
    var languageId: String!
    var name: String!
    var model: String!
    var unit: String!
    var weight: String!
    var pprice: String!
    var categoryId: String!
    var orginalCatid: String!
    var sortOrder: String!
    var image: String!
    var prate: String!
    var price: String!
    var actualprice: String!
    var offerprice: String? = nil
    var metaDescription: String!
    var status: String!
    var weightClassId: String!
    var productstock: String!
    var aproductstock: String!
    var sku: String!
    var sortOrder2: String!
    var sortCat: String!
    private enum CodingKeys: String, CodingKey {
        case productId = "product_id"
        case languageId = "language_id"
        case name
        case model
        case unit
        case weight
        case pprice
        case categoryId = "category_id"
        case orginalCatid = "orginal_catid"
        case sortOrder = "sort_order"
        case image
        case prate
        case price
        case actualprice
        case offerprice
        case metaDescription = "meta_description"
        case status
        case weightClassId = "weight_class_id"
        case productstock
        case aproductstock
        case sku
        case sortOrder2 = "sort_order2"
        case sortCat = "sort_cat"
    }
}
