//
//  Card.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
extension APIRouters{ //Card
    enum Card:EndPointType {
        
        
        case get(request:TrolleyRequestModel<Array<String>>)
        
        
        
        func path()->String{
            switch self {
            case .get:
                return  APIRouters.apiEnvironment.urlBase() +         "/card/get"
                
                
                
            }
            
        }
        var parameters: Codable?{
            
            switch(self){
            case .get(let request):
                return request
                
                
                
                
            }
            
            
        }
        
    }
}
