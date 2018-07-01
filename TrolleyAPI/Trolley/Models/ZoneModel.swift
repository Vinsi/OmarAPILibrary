//
//  ZoneModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class ZoneModel: NSObject,Codable {
    var zoneId: String!
    var countryId: String!
    var code: String!
    var name: String!
    var status: String!
    var corLat: Float!
    var corLon: Float!
    private enum CodingKeys: String, CodingKey {
        case zoneId = "zone_id"
        case countryId = "country_id"
        case code
        case name
        case status
        case corLat = "cor_lat"
        case corLon = "cor_lon"
    }
}

@objc public class ZoneRequestDataModel:NSObject,Codable{
    
    var countryId:String?
    private enum CodingKeys: String, CodingKey {
    
        case countryId = "country_id"
    }
}
