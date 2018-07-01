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
    public var ver  : String?
    public var reqID: String?
    public var logID: String?
    public var date : String?
    
}
