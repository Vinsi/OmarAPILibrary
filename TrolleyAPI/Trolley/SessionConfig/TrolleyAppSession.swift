
//
//  TrolleyAppSession.swift
//  TrolleyAPI
//
//  Created by vinsi on 27/06/2018.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class TrolleyAppSession :NSObject,ITrolleyAppSession {
    public var deviceTime: Date
    
    public var token: String
    
    public var language: String
    
    public var logid: IIDGenerator? = nil
    
    public var appVersion: String
    
    public var os: String
    public override init(){
        
        
        self.deviceTime = Date()
        self.token = " "
        self.language = "en"
        
        self.appVersion = "test"
        self.os   = "ios"
         super.init()
    }
    public func haveAccessToken() -> Bool {
        return self.token != " "
    }
    
    
    
    
}
