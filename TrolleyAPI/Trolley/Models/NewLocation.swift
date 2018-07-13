//
//  ResponseDataModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class NewLocationRequestDataModel: NSObject,Codable {

    public var zoneid             : String? = nil
    public var apartmentNumber    : String? = nil
    public var lastname           : String? = nil
    public var city               : String? = nil
    public var address1           : String? = nil
    public var specialInstruction : String? = nil
    public var buildingNumber     : String? = nil
    public var customerId         : String? = nil
    public var firstname          : String? = nil
    public var company            : String? = nil
    public var address2           : String? = nil
    public var postcode           : String? = nil
    public var countryId          : String? = nil
    public var latitude                : Float? = nil
    public var longtitude               : Float? = nil
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
        case latitude
        case longtitude
    }
}
class NewLocationResponseDataModel: Codable {
    
    
}

