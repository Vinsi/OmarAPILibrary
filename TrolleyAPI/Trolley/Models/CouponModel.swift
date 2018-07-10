//
//  CouponModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public  class CouponDataRequestModel:NSObject,Codable {
    
    public var orderedItems:[ItemModel]?
    public var couponcode:String?
    private enum CodingKeys: String, CodingKey {
        case orderedItems = "order_items"
        case couponcode
        
    }
    
}

@objc public  class CouponDataResponseModel:NSObject,Codable {
    
     public var subtotalamount:String?
     public var couponamount:String?
     public var deliveryamount:String?
     public var finaltotalamount:String?

   
    
}
