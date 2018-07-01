//
//  User.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation

@objc public class UserInfoResponseDataModel:NSObject, Codable {
    @objc public class ShippingAddresse: NSObject,Codable {
        public var firstname: String?
        public var lastname: String?
        public var addressId: String?
        public var zoneId: String?
        public var zoneName: String?
        public var apartmentNumber: String?
        public var address1: String?
        public var address2: String?
        public var countryId: String?
        public var countryName: String?
        public var areaname: String?
        public var zonecode: String?
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
    public var shippingAddresses: [ShippingAddresse]?
    @objc public class Userinfo: NSObject,Codable {
        public var customerId: String?
        public var storeId: String?
        public var firstname: String?
        public var lastname: String?
        public var email: String?
        public var prefix: String?
        public var telephone: String?
        public var fax: String?
        public var addressId: String?
        public var customerGroupId: String?
        public var ip: String?
        public var status: String?
        public var dateAdded: String?
        public var employeeId: String?
        public var cart: String?
        public var points: String?
        public var rewardrate: Double?
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
    public var userinfo: Userinfo?
    public var savedcart: [String]?
    private enum CodingKeys: String, CodingKey {
        case shippingAddresses = "shipping_addresses"
        case userinfo
        case savedcart
    }
}


