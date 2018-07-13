//
//  UpdateLocation.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class UpdateLocationRequestDataModel:NSObject, Codable {
    public var  zoneid            : String?
    public var  action            : Int?
    public var  addressid         : String?
    public var  addressId         : String?
    public var  address2          : String?
    public var  countryId         : String?
    public var  customerId        : String?
    public var  apartmentNumber   : String?
    public var latitude                : Float? = nil
    public var longtitude               : Float? = nil
    private enum CodingKeys: String, CodingKey {
        case zoneid
        case action
        case addressid
        case addressId       = "address_id"
        case address2        = "address_2"
        case countryId       = "country_id"
        case customerId      = "customer_id"
        case apartmentNumber = "apartment_number"
        case latitude
        case longtitude
    }
}

@objc public class ChangeDefaultLocationRequestDataModel:NSObject,Codable{
    
    public var addressid:String?
}
