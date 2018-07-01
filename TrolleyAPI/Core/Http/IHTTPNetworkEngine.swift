//
//  INetWorkEngine.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/20/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation


typealias IHTTPNetworkResponse = ( _ response :String,_ error:Error)->Void
@objc public protocol IRequest{
     func cancel()
    
}
protocol IHTTPNetworkEngine  {

    var decoder:JSONDecoder? {get set}
    func performRequest<T>(route: EndPointType, responsetype:T.Type ,completion: @escaping ( APIStatus,T?) -> Void) -> IRequest where T : Decodable
    
    
}

