//
//  HeaderResponseModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class HeaderResponseModel:NSObject, Codable {
    var info : String?
    var ver  : String?
    var reqID: String?
    var logID: String?
    var date : String?
    
}
