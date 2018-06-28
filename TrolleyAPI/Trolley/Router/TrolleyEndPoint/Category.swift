//
//  CategoryEndPoints.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
extension APIRouters {
    
    
    
    
    enum Category : EndPointType {
      
        
        
        
        
        
        
        
        // category
        
        case getAll(requestModel:EmptyTrolleyRequestModel)
        case products(requestModel:TrolleyRequestModel<ProductsInCategoryRequestDataModel>)
        
        func path()->String{
            switch self {
            case .getAll:
                return APIRouters.apiEnvironment.urlBase() + "/category/getall"
            case .products:
                return APIRouters.apiEnvironment.urlBase() + "/category/products/get"
            }
            
        }
        var parameters: Codable?{
            
            switch self {
            case .getAll(let request):
                return request
            case .products(let request):
                return request
            }
            
        }
        
        
    }
    
    
}
