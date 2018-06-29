 //
//  TrolleyAPI.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/2/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
import Alamofire

 class  AlamoRequest :IRequest{

     var request:DataRequest? = nil
    func cancel() {
        request?.cancel()
        
    }
    convenience init(request:DataRequest) {
        
        self.init()
        self.request = request
        
    }
    
    
    
    
    
 }
 class  AlamoFireNetworkEngine:IHTTPNetworkEngine{
   
    

    
    var decoder: JSONDecoder? = JSONDecoder()
    
   
    
    func performRequest<T>(route: EndPointType, responsetype:T.Type ,completion: @escaping ( APIStatus,T?) -> Void) -> IRequest where T : Decodable {

        
        var proxyConfiguration = [NSObject: AnyObject]()
        proxyConfiguration[kCFNetworkProxiesHTTPProxy]   = "192.168.19.104" as AnyObject
        proxyConfiguration[kCFNetworkProxiesHTTPPort]    = "5555" as AnyObject
        proxyConfiguration[kCFNetworkProxiesHTTPEnable]  = 1 as AnyObject
        


        //proxyConfiguration[kCFProxyPasswordKey as String] = "pwd if any"
        let cfg = Alamofire.SessionManager.default.session.configuration
        cfg.connectionProxyDictionary = proxyConfiguration
        

     
           let request =  URLRequestConvertibleAdapter(request: route)
           return  AlamoRequest(request:   Alamofire.request(request).response(completionHandler: { (response) in
               
                
                guard let data = response.data else {
                 
                    
                    completion(APIStatus(status:Status.networkEmptyResponse()),nil)
                    return
               }
              
        
               
            
                // modelling
                do {
                    let modelObject =  try self.decoder?.decode(responsetype, from: data)
                    
                    completion(APIStatus(status:Status.networkSuccess()),modelObject)
                
                }
                catch let error {
                    let status = APIStatus(status:Status.networkFailureParsing(message: error.localizedDescription))
                    status.rawdata = String(decoding: data, as: UTF8.self)
                    completion(status,nil)
                    
                }
                
                
                    
                    
                
               
             
            })// function close
            )// alamo wrapper
        
 }

 }
  
    


