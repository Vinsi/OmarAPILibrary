//
//  Auth.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class AuthResponseDataModel: NSObject,Codable {
    public var accesstoken: String? = nil
    public var accesstokenExpiry: String? = nil
    public var customerId: String? = nil
    private enum CodingKeys: String, CodingKey {
        case accesstoken
        case accesstokenExpiry = "accesstoken_expiry"
        case customerId = "customer_id"
    }
}
@objc public class AuthRequestDataModel:NSObject, Codable {
    public var login: String?
    public var password: String?
}





