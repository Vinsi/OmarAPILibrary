//
//  ItemSearchModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 27/06/2018.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class ItemSearchModel: NSObject,Codable {
    public var productId: String!
    public var languageId: String!
    public var name: String!
    public var model: String!
    public var unit: String!
    public var weight: String!
    public var pprice: String!
    public var categoryId: String!
    public var orginalCatid: String!
    public var sortOrder: String!
    public var image: String!
    public var prate: String!
    public var price: String!
    public var actualprice: String!
    public var offerprice: String? = nil
    public var metaDescription: String!
    public var status: String!
    public var weightClassId: String!
    public var productstock: String!
    public var aproductstock: String!
    public var sku: String!
    public var sortOrder2: String!
    public var sortCat: String!
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
