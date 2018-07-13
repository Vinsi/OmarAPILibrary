//
//  HeaderResponseModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class HeaderResponseModel:NSObject, Codable {
    public var info : String?
    public var version  : String?
    public var requestID: String?
    public var logID: String?
    public var date : Date?
    
    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self) // defining our (keyed) container
        
        info          = try container.decode(String.self, forKey: CodingKeys.info) // extracting the data
        version           = try container.decode(String.self, forKey: CodingKeys.version) // extracting the data
        requestID         = try container.decode(String.self, forKey: CodingKeys.requestID) // extracting the data
        logID         = try container.decode(String.self, forKey: CodingKeys.logID)
        let  dateString         = try container.decode(String.self, forKey: CodingKeys.date)
        //2018-03-25 23:29:19
        
        let df = DateFormatter()
        df.timeZone = TimeZone(abbreviation: "Asia/Dubai")
        df.dateFormat = "yyyy-MM-dd HH:mm:ss"
        
        date = df.date(from: dateString)
        
        
        
        
    }
}

