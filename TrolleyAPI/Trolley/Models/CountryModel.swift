//
//  CountryDataModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation

@objc public class CountryModel:NSObject, Codable {
    public var countryId: String!
    public var name: String!
    public var isoCode2: String!
    public var isoCode3: String!
    public var addressFormat: String!
    public var postcodeRequired: String!
    public var status: String!
    public var countryCapacity: String!
    public var zoneCode: String!
    public var outside: String!
    private enum CodingKeys: String, CodingKey {
        case countryId = "country_id"
        case name
        case isoCode2 = "iso_code_2"
        case isoCode3 = "iso_code_3"
        case addressFormat = "address_format"
        case postcodeRequired = "postcode_required"
        case status
        case countryCapacity = "country_capacity"
        case zoneCode = "zone_code"
        case outside
    }
}
