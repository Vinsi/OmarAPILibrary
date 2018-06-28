//
//  Order.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
extension APIRouters{ //Order
    enum Order:EndPointType {
       
        
        case add            (request:TrolleyRequestModel<OrderRequestDataModel>)
        case getOrders      (request:EmptyTrolleyRequestModel)
        case productsOrdered(request:TrolleyRequestModel<OrderDetailsRequestDataModel>)
        case scheduledOrders(request:EmptyTrolleyRequestModel)
        case deleteScheduled(request:ScheduledOrderDeleteRequestModel)
        
        func path()->String{
            switch self {
            case .add:
                return  APIRouters.apiEnvironment.urlBase() +     "/order/add"
            case .getOrders:
                return  APIRouters.apiEnvironment.urlBase() +     "/order/get"
            case .productsOrdered:
                return  APIRouters.apiEnvironment.urlBase() +     "/order/product/get"
            case .scheduledOrders:
                return  APIRouters.apiEnvironment.urlBase() +     "/order/scheduled/get"
            case .deleteScheduled:
                return  APIRouters.apiEnvironment.urlBase() +     "/order/scheduled/delete"
            }
        }
        var parameters: Codable?{

        switch(self){

        case .add            (let request):
        return request

        case .getOrders      (let request):
        return request

        case .productsOrdered(let request):
        return request

        case .scheduledOrders(let request):
        return request

        case .deleteScheduled(let request):
        return request



        }


            
        }
        
        
    }
    
}
