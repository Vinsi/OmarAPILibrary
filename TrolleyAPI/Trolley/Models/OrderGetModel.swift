//
//  OrderGetModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 27/06/2018.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class OrderGetDataModel:NSObject, Codable {

        public var orderId: String!
        public var invoiceNo: String!
        public var invoicePrefix: String!
        public var storeId: String!
        public var storeName: String!
        public var storeUrl: URL!
        public var customerId: String!
        public var customerGroupId: String!
        public var firstname: String!
        public var lastname: String!
        public var email: String!
        public var telephone: String!
        public var fax: String!
        public var shippingFirstname: String!
        public var shippingLastname: String!
        public var shippingCompany: String!
        public var shippingAddress1: String!
        public var shippingAddress2: String!
        public var shippingCity: String!
        public var shippingPostcode: String!
        public var shippingCountry: String!
        public var shippingCountryId: String!
        public var shippingZone: String!
        public var shippingZoneId: String!
        public var shippingAddressFormat: String!
        public var shippingMethod: String!
        public var paymentFirstname: String!
        public var paymentLastname: String!
        public var paymentCompany: String!
        public var paymentAddress1: String!
        public var paymentAddress2: String!
        public var paymentCity: String!
        public var paymentPostcode: String!
        public var paymentCountry: String!
        public var paymentCountryId: String!
        public var paymentZone: String!
        public var paymentZoneId: String!
        public var paymentAddressFormat: String!
        public var paymentMethod: String!
        public var comment: String!
        public var total: String!
        public var reward: String!
        public var orderStatusId: String!
        public var affiliateId: String!
        public var commission: String!
        public var languageId: String!
        public var currencyId: String!
        public var currencyCode: String!
        public var currencyValue: String!
        public var dateAdded: Date!
        public var dateModified: Date!
        public var ip: String!
        public var deliveryDate: String!
        public var deliveryTime: String!
        public var shopperId: String!
        public var driverId: String!
        public var addtional: String!
        public var cancelled: String!
        public var outside: String!
        public var aswaaq: String!
        public var paid: String!
        public var preference: String!
        public var source: String!
        public var eretailId: String!
        public var referer: String!
        public var timeslotId: String!
        public var timeslotDesc: String!
        public var timeslotPrice: String!
        public var timeslotCapacity: String!
        public var hour: String!
        public var duration: String!
        public var name: String!
        private enum CodingKeys: String, CodingKey {
            case orderId = "order_id"
            case invoiceNo = "invoice_no"
            case invoicePrefix = "invoice_prefix"
            case storeId = "store_id"
            case storeName = "store_name"
            case storeUrl = "store_url"
            case customerId = "customer_id"
            case customerGroupId = "customer_group_id"
            case firstname
            case lastname
            case email
            case telephone
            case fax
            case shippingFirstname = "shipping_firstname"
            case shippingLastname = "shipping_lastname"
            case shippingCompany = "shipping_company"
            case shippingAddress1 = "shipping_address_1"
            case shippingAddress2 = "shipping_address_2"
            case shippingCity = "shipping_city"
            case shippingPostcode = "shipping_postcode"
            case shippingCountry = "shipping_country"
            case shippingCountryId = "shipping_country_id"
            case shippingZone = "shipping_zone"
            case shippingZoneId = "shipping_zone_id"
            case shippingAddressFormat = "shipping_address_format"
            case shippingMethod = "shipping_method"
            case paymentFirstname = "payment_firstname"
            case paymentLastname = "payment_lastname"
            case paymentCompany = "payment_company"
            case paymentAddress1 = "payment_address_1"
            case paymentAddress2 = "payment_address_2"
            case paymentCity = "payment_city"
            case paymentPostcode = "payment_postcode"
            case paymentCountry = "payment_country"
            case paymentCountryId = "payment_country_id"
            case paymentZone = "payment_zone"
            case paymentZoneId = "payment_zone_id"
            case paymentAddressFormat = "payment_address_format"
            case paymentMethod = "payment_method"
            case comment
            case total
            case reward
            case orderStatusId = "order_status_id"
            case affiliateId = "affiliate_id"
            case commission
            case languageId = "language_id"
            case currencyId = "currency_id"
            case currencyCode = "currency_code"
            case currencyValue = "currency_value"
            case dateAdded = "date_added"
            case dateModified = "date_modified"
            case ip
            case deliveryDate = "delivery_date"
            case deliveryTime = "delivery_time"
            case shopperId = "shopper_id"
            case driverId = "driver_id"
            case addtional
            case cancelled
            case outside
            case aswaaq
            case paid
            case preference
            case source
            case eretailId = "eretail_id"
            case referer
            case timeslotId = "timeslot_id"
            case timeslotDesc = "timeslot_desc"
            case timeslotPrice = "timeslot_price"
            case timeslotCapacity = "timeslot_capacity"
            case hour
            case duration
            case name
        }
    

}
