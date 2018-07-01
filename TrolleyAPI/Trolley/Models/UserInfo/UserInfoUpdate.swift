//
//  UserInfoUpdate.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class UserInfoUpdateResponseDataModel: Codable {
    
    required  init(from decoder: Decoder) throws {
        
    }
}
@objc public class UserInfoUpdateRequestDataModel: NSObject,Codable {
    public var telephone: String?
    public var firstname: String?
    public var lastname: String?
    public var email: String?
    public var phonePrefix: String?
    private enum CodingKeys: String, CodingKey {
        case telephone
      
        case firstname
        case lastname
        case email
        case phonePrefix = "phone_prefix"
    }
}

