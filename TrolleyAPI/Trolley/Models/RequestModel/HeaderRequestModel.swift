//
//  RequestModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class HeaderRequestModel : Codable {
    
    var deviceOs: String?
    var customerId: String?
    var appVersion: String?
    var accesstoken: String?
    var deviceTime: Date?
    var deviceType: String?
    var logid: String?
    
    
    public enum CodingKeys: String, CodingKey {
        
        case deviceOs = "device_os"
        case customerId = "customer_id"
        case appVersion = "app_version"
        case accesstoken
        case deviceTime = "device_time"
        case deviceType = "device_type"
        case logid
        
    }
    
}
