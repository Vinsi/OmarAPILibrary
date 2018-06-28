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
class UserInfoUpdateRequestDataModel: Codable {
    var telephone: String?
    var firstname: String?
    var lastname: String?
    var email: String?
    var phonePrefix: String?
    private enum CodingKeys: String, CodingKey {
        case telephone
      
        case firstname
        case lastname
        case email
        case phonePrefix = "phone_prefix"
    }
}

