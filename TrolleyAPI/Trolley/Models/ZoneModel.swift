//
//  ZoneModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class ZoneModel: NSObject,Codable {
    public var zoneId: String!
    public var countryId: String!
    public var code: String!
    public var name: String!
    public var status: String!
    public var corLat: Float!
    public var corLon: Float!
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
    
    public var countryId:String?
    private enum CodingKeys: String, CodingKey {
    
        case countryId = "country_id"
    }
}
