//
//  EndPointType+Trolley.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
import Alamofire
class  URLRequestConvertibleAdapter :URLRequestConvertible {
    public var request:IURLRequest
    func asURLRequest() throws -> URLRequest {
        return try self.request.asCoreURLRequest()
    }
    
    
    init (request:IURLRequest ){
    self.request = request
    
    }
}
extension EndPointType   {
    
    var headers:HTTPHeaders?{
        return ["Content-Type":"application/json"]
    }
    var method:HTTPMethods?{
        return HTTPMethods.post
        
    }

    func  asURLRequest() throws -> URLRequest {
        
  
        return try asCoreURLRequest()
    }
    func asCoreURLRequest() throws -> URLRequest {

     
        let url =  URL(string: self.path())
        
        var urlRequest = URLRequest(url: url!)
        
        // HTTP Method
        urlRequest.httpMethod = self.method?.rawValue
        
        // Common Headers
        urlRequest.setValue("application/json", forHTTPHeaderField:"Content-Type")
        
        
        // Parameters
        
        
        
        if let params = parameters {
            do {
               
               let json = try params.asDictionary()
                urlRequest.httpBody = try JSONSerialization.data(withJSONObject: json , options: [])
            } catch {
                throw AFError.parameterEncodingFailed(reason: .jsonEncodingFailed(error: error))
            }
        }
        
        return urlRequest
    }
}
