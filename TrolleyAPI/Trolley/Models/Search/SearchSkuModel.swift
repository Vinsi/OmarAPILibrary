//
//  SearchSkuRequestModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class SearchSkuRequestDataModel:NSObject,Codable{
    
    public var code: String? = nil
    private enum CodingKeys: String, CodingKey {
        case code = "code"
    }
}

