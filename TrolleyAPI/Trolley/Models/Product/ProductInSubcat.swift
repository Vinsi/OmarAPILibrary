//
//  ProductInSubcat.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class ProductsInCategoryRequestDataModel: Codable {
    var categoryId: String? = nil
    private enum CodingKeys: String, CodingKey {
        case categoryId = "category_id"
    }
}
class ProductsInCategoryResponseDataModel: Codable {
    class Row: Codable {
        var parentId: String!
        var ischild: String!
        var categoryname: String!
        var catsortOrder: String!
        var productId: String!
        var languageId: String!
        var name: String!
        var nameAr: String!
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
        var offerprice: String!
        var metaDescription: String!
        var status: String!
        var weightClassId: String!
        var productstock: String!
        var aproductstock: String!
        var sku: String!
        var sortOrder2: String!
        var sortCat: String!
        private enum CodingKeys: String, CodingKey {
            case parentId = "parent_id"
            case ischild
            case categoryname
            case catsortOrder = "catsort_order"
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
    var rows: [Row]!
    class Maincategoryinfo: Codable {
        var categoryId: String!
        var image: String!
        var parentId: String!
        var top: String!
        var column: String!
        var sortOrder: String!
        var status: String!
        var dateAdded: Date!
        var dateModified: Date!
        var urlAlias: String!
        var color: String!
        var languageId: String!
        var name: String!
        var description: String!
        var metaDescription: String!
        var metaKeyword: String!
        var bannerId: String!
        var bannerName: String!
        var bannerMobileId: String!
        var bannerMobileName: String!
        var sortBreak: String!
        private enum CodingKeys: String, CodingKey {
            case categoryId = "category_id"
            case image
            case parentId = "parent_id"
            case top
            case column
            case sortOrder = "sort_order"
            case status
            case dateAdded = "date_added"
            case dateModified = "date_modified"
            case urlAlias = "url_alias"
            case color
            case languageId = "language_id"
            case name
            case description
            case metaDescription = "meta_description"
            case metaKeyword = "meta_keyword"
            case bannerId = "banner_id"
            case bannerName = "banner_name"
            case bannerMobileId = "banner_mobile_id"
            case bannerMobileName = "banner_mobile_name"
            case sortBreak = "sort_break"
        }
    }
    var maincategoryinfo: Maincategoryinfo!
}
//:MARK
