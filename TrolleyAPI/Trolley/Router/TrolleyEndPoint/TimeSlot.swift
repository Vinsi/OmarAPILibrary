//
//  TimeSlot.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
extension APIRouters{ //timeSlots
    enum TimeSlot:EndPointType {
      
        
     
        
        case get(request:TrolleyRequestModel<TimeSlotRequestDataModel>)
        case getScheduled(request:TrolleyRequestModel<TimeSlotRequestDataModel>)
        
        var parameters: Codable?{
            
            switch self {
            case .get(let request):
                return request
                
            case .getScheduled(let request):
                return request
                
                
            }
            
        }
        func path()->String{
            switch self {
            case .get:
                return  APIRouters.apiEnvironment.urlBase() +      "/timeslot/get"
            case .getScheduled:
                return  APIRouters.apiEnvironment.urlBase() +      "/timeslot/schedule/get"
                
            }
            
            
        }
        
    }
    
}
