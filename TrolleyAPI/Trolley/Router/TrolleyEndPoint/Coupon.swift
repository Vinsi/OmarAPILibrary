//
//  Coupon.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
extension APIRouters { // coupon
    
    enum Coupon: EndPointType {
        case discount(request:TrolleyRequestModel<CouponDataRequestModel>)
        
        func path()->String{
            switch self {
            case .discount:
                return  APIRouters.apiEnvironment.urlBase() + "/coupon/discount/get"
                
                
                
            }
            
        }
        var parameters: Codable?{
            
            switch self {
            case .discount(let request):
                return  request
         
            
        }
        
    }
}
}
