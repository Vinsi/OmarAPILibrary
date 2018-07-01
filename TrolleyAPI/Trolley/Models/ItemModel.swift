//
//  ItemModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class ItemModel: Codable {
    public var productId       : String? = nil
    public var languageId      : String? = nil
    public var name            : String? = nil
    public var nameAr          : String? = nil
    public var model           : String? = nil
    public var unit            : String? = nil
    public var weight          : String? = nil
    public var pprice          : String? = nil
    public var categoryId      : String? = nil
    public var orginalCatid    : String? = nil
    public var sortOrder       : String? = nil
    public var image           : String? = nil
    public var prate           : String? = nil
    public var price           : String? = nil
    public var actualprice     : String? = nil
    public var offerprice      : String? = nil
    public var metaDescription : String? = nil
    public var status          : String? = nil
    public var weightClassId   : String? = nil
    public var productstock    : String? = nil
    public var aproductstock   : String? = nil
    public var sku             : String? = nil
    public var sortOrder2      : String? = nil
    public var sortCat         : String? = nil
    private enum CodingKeys: String, CodingKey {
        case productId = "product_id"
        case languageId = "language_id"
        case name
        case nameAr = "name_ar"
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
