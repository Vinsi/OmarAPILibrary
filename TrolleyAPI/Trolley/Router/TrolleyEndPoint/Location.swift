//
//  Location.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
extension APIRouters{ //Lcoation
    enum Location:EndPointType
    {
  
        
        case add             (request:TrolleyRequestModel<NewLocationRequestDataModel>)
        case update          (request:TrolleyRequestModel<UpdateLocationRequestDataModel>)
        case updateTodefault (request:TrolleyRequestModel<ChangeDefaultLocationRequestDataModel>)
        case getCountries    (request:TrolleyRequestModel<CountryRequestModel>)
        case getZones        (request:TrolleyRequestModel<ZoneRequestDataModel>)
        
        func path()->String{
            switch self {
            case .add:
                return  APIRouters.apiEnvironment.urlBase() +     "/location/add"
            case .update:
                return  APIRouters.apiEnvironment.urlBase() +     "/location/update"
            case .updateTodefault:
                return  APIRouters.apiEnvironment.urlBase() +     "/location/default/update"
            case .getCountries:
                return  APIRouters.apiEnvironment.urlBase() +     "/location/country/get"
            case .getZones:
                return  APIRouters.apiEnvironment.urlBase() +     "/location/zone/get"
                
            }
            
            
        }
        var parameters: Codable?{

            switch(self){
            case .add             (let request): return request
            case .update          (let request): return request
            case .updateTodefault (let request): return request
            case .getCountries    (let request): return request
            case .getZones        (let request): return request

        }

    }
    }
}
