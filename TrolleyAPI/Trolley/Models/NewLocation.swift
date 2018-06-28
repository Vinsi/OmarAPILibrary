//
//  ResponseDataModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class NewLocationRequestDataModel: Codable {

    var zoneid             : String? = nil
    var apartmentNumber    : String? = nil
    var lastname           : String? = nil
    var city               : String? = nil
    var address1           : String? = nil
    var specialInstruction : String? = nil
    var buildingNumber     : String? = nil
    var customerId         : String? = nil
    var firstname          : String? = nil
    var company            : String? = nil
    var address2           : String? = nil
    var postcode           : String? = nil
    var countryId          : String? = nil
    private enum CodingKeys: String, CodingKey {
        case zoneid
        case apartmentNumber    = "apartment_number"
        case lastname
        case city
        case address1           = "address_1"
        case specialInstruction = "special_Instruction"
        case buildingNumber     = "building_number"
        case customerId         = "customer_id"
        case firstname
        case company
        case address2           = "address_2"
        case postcode
        case countryId          = "country_id"
    }
}
class NewLocationResponseDataModel: Codable {
    
    
}

