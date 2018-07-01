//
//  OrderGetModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 27/06/2018.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class OrderGetDataModel:NSObject, Codable {

        var orderId: String!
        var invoiceNo: String!
        var invoicePrefix: String!
        var storeId: String!
        var storeName: String!
        var storeUrl: URL!
        var customerId: String!
        var customerGroupId: String!
        var firstname: String!
        var lastname: String!
        var email: String!
        var telephone: String!
        var fax: String!
        var shippingFirstname: String!
        var shippingLastname: String!
        var shippingCompany: String!
        var shippingAddress1: String!
        var shippingAddress2: String!
        var shippingCity: String!
        var shippingPostcode: String!
        var shippingCountry: String!
        var shippingCountryId: String!
        var shippingZone: String!
        var shippingZoneId: String!
        var shippingAddressFormat: String!
        var shippingMethod: String!
        var paymentFirstname: String!
        var paymentLastname: String!
        var paymentCompany: String!
        var paymentAddress1: String!
        var paymentAddress2: String!
        var paymentCity: String!
        var paymentPostcode: String!
        var paymentCountry: String!
        var paymentCountryId: String!
        var paymentZone: String!
        var paymentZoneId: String!
        var paymentAddressFormat: String!
        var paymentMethod: String!
        var comment: String!
        var total: String!
        var reward: String!
        var orderStatusId: String!
        var affiliateId: String!
        var commission: String!
        var languageId: String!
        var currencyId: String!
        var currencyCode: String!
        var currencyValue: String!
        var dateAdded: Date!
        var dateModified: Date!
        var ip: String!
        var deliveryDate: String!
        var deliveryTime: String!
        var shopperId: String!
        var driverId: String!
        var addtional: String!
        var cancelled: String!
        var outside: String!
        var aswaaq: String!
        var paid: String!
        var preference: String!
        var source: String!
        var eretailId: String!
        var referer: String!
        var timeslotId: String!
        var timeslotDesc: String!
        var timeslotPrice: String!
        var timeslotCapacity: String!
        var hour: String!
        var duration: String!
        var name: String!
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
