//
//  User.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation

class UserInfoResponseDataModel: Codable {
    class ShippingAddresse: Codable {
        var firstname: String?
        var lastname: String?
        var addressId: String?
        var zoneId: String?
        var zoneName: String?
        var apartmentNumber: String?
        var address1: String?
        var address2: String?
        var countryId: String?
        var countryName: String?
        var areaname: String?
        var zonecode: String?
        private enum CodingKeys: String, CodingKey {
            case firstname
            case lastname
            case addressId = "address_id"
            case zoneId = "zone_id"
            case zoneName = "zone_name"
            case apartmentNumber = "apartment_number"
            case address1 = "address_1"
            case address2 = "address_2"
            case countryId = "country_id"
            case countryName = "country_name"
            case areaname
            case zonecode
        }
    }
    var shippingAddresses: [ShippingAddresse]?
    class Userinfo: Codable {
        var customerId: String?
        var storeId: String?
        var firstname: String?
        var lastname: String?
        var email: String?
        var prefix: String?
        var telephone: String?
        var fax: String?
        var addressId: String?
        var customerGroupId: String?
        var ip: String?
        var status: String?
        var dateAdded: String?
        var employeeId: String?
        var cart: String?
        var points: String?
        var rewardrate: Double?
        private enum CodingKeys: String, CodingKey {
            case customerId = "customer_id"
            case storeId = "store_id"
            case firstname
            case lastname
            case email
            case prefix
            case telephone
            case fax
            case addressId = "address_id"
            case customerGroupId = "customer_group_id"
            case ip
            case status
            case dateAdded = "date_added"
            case employeeId = "employee_id"
            case cart
            case points
            case rewardrate
        }
    }
    var userinfo: Userinfo?
    var savedcart: [String]?
    private enum CodingKeys: String, CodingKey {
        case shippingAddresses = "shipping_addresses"
        case userinfo
        case savedcart
    }
}


