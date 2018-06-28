//
//  ItemModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class ItemModel: Codable {
    var productId       : String? = nil
    var languageId      : String? = nil
    var name            : String? = nil
    var nameAr          : String? = nil
    var model           : String? = nil
    var unit            : String? = nil
    var weight          : String? = nil
    var pprice          : String? = nil
    var categoryId      : String? = nil
    var orginalCatid    : String? = nil
    var sortOrder       : String? = nil
    var image           : String? = nil
    var prate           : String? = nil
    var price           : String? = nil
    var actualprice     : String? = nil
    var offerprice      : String? = nil
    var metaDescription : String? = nil
    var status          : String? = nil
    var weightClassId   : String? = nil
    var productstock    : String? = nil
    var aproductstock   : String? = nil
    var sku             : String? = nil
    var sortOrder2      : String? = nil
    var sortCat         : String? = nil
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
