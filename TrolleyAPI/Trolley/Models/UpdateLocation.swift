//
//  UpdateLocation.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class UpdateLocationRequestDataModel: Codable {
    var  zoneid            : String?
    var  action            : Int?
    var  addressid         : String?
    var  addressId         : String?
    var  address2          : String?
    var  countryId         : String?
    var  customerId        : String?
    var  apartmentNumber   : String?
    private enum CodingKeys: String, CodingKey {
        case zoneid
        case action
        case addressid
        case addressId       = "address_id"
        case address2        = "address_2"
        case countryId       = "country_id"
        case customerId      = "customer_id"
        case apartmentNumber = "apartment_number"
    }
}

class ChangeDefaultLocationRequestDataModel:Codable{
    
    var addressid:String?
}
