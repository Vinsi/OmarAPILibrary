//
//  Products.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
extension APIRouters{
    
    enum Search: EndPointType {
      
        // products
        case searchBySku(request:TrolleyRequestModel<SearchSkuRequestDataModel>)
        case searchByName(request:TrolleyRequestModel<SearchNameDataRequestModel>)
        func path()->String{
            switch self {
            case .searchBySku:
                return  APIRouters.apiEnvironment.urlBase() +  "/product/search/sku/get"
            case .searchByName:
                return APIRouters.apiEnvironment.urlBase()  +  "/product/search/name/get"
            }
            
            
        }
        var parameters: Codable?{
            
            switch self {
            case .searchBySku(let request):
                return  request
            case .searchByName(let request):
                return request
            }
            
        }
        
    }
    
    
}
