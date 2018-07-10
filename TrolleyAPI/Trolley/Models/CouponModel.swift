//
//  CouponModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class CouponApplyItems:NSObject,Codable {
    public var category_id:String? = nil
    public var product_id:String? = nil
    public var quantity:Int? = nil
    
}

@objc public  class CouponDataRequestModel:NSObject,Codable {
    
    public var orderedItems:[CouponApplyItems]?
    public var couponcode:String?
    private enum CodingKeys: String, CodingKey {
        case orderedItems = "order_items"
        case couponcode
        
    }
    
}

@objc public  class CouponDataResponseModel:NSObject,Codable {
    
     public var subtotalamount:Float?
     public var couponamount:Float?
     public var deliveryamount:Float?
     public var finaltotalamount:Float?

   
    
}
