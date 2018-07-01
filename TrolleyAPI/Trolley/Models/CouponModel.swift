//
//  CouponModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class CouponDataRequestModel:Codable {
    
    public var orderedItems:[ItemModel]?
    public var couponcode:String?
    private enum CodingKeys: String, CodingKey {
        case orderedItems = "order_items"
        case couponcode
        
    }
    
}
