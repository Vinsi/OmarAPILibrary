//
//  CountryDataModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation

class CountryModel: Codable {
    var countryId: String!
    var name: String!
    var isoCode2: String!
    var isoCode3: String!
    var addressFormat: String!
    var postcodeRequired: String!
    var status: String!
    var countryCapacity: String!
    var zoneCode: String!
    var outside: String!
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
