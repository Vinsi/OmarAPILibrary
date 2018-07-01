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
    class Row: Codable {
        public var parentId: String!
        public var ischild: String!
        public var categoryname: String!
        public var catsortOrder: String!
        public var productId: String!
        public var languageId: String!
        public var name: String!
        public var nameAr: String!
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
        public var offerprice: String!
        public var metaDescription: String!
        public var status: String!
        public var weightClassId: String!
        public var productstock: String!
        public var aproductstock: String!
        public var sku: String!
        public var sortOrder2: String!
        public var sortCat: String!
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
    public var rows: [Row]!
    class Maincategoryinfo: Codable {
        public var categoryId: String!
        public var image: String!
        public var parentId: String!
        public var top: String!
        public var column: String!
        public var sortOrder: String!
        public var status: String!
        public var dateAdded: Date!
        public var dateModified: Date!
        public var urlAlias: String!
        public var color: String!
        public var languageId: String!
        public var name: String!
        public var description: String!
        public var metaDescription: String!
        public var metaKeyword: String!
        public var bannerId: String!
        public var bannerName: String!
        public var bannerMobileId: String!
        public var bannerMobileName: String!
        public var sortBreak: String!
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
    public var maincategoryinfo: Maincategoryinfo!
}
//:MARK
