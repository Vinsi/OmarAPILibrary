//
//  TrolleyResponsemodel.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class TrolleyResponseModel<ResponseDataModel:Any>:Codable where ResponseDataModel:Codable  {
    
    public var header       : HeaderResponseModel? = nil
    public var data         : ResponseDataModel?  = nil
    public var ins          : String?             = nil
    public var statusmessage: String?             = nil
    public var error        : Int?                = nil
    
    public enum CodingKeys: String, CodingKey {
        case header
        case data
        case ins
        case statusmessage
        case error
    }
    
    required  init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self) // defining our (keyed) container
        
        header        = try container.decode(HeaderResponseModel.self, forKey: CodingKeys.header) // extracting the data
        ins           = try container.decode(String.self, forKey: CodingKeys.ins) // extracting the data
        statusmessage = try container.decode(String.self, forKey: CodingKeys.statusmessage) // extracting the data
        error         = try container.decode(Int.self, forKey: CodingKeys.error)
        if error == 0 {
            data         = try container.decode(ResponseDataModel.self, forKey: CodingKeys.data)
            
        }
        else {
            
            data = nil
        }
        
        
        
        
        
    }
    func hasError()->Bool{
        
        return error! > 0
    }
    
}
