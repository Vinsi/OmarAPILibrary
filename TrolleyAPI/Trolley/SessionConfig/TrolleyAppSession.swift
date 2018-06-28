
//
//  TrolleyAppSession.swift
//  TrolleyAPI
//
//  Created by vinsi on 27/06/2018.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class TrolleyAppSession :ITrolleyAppSession{
    var token: String
    
    var language: String
    
    var logid: Int
    
    var appVersion: String
    
    var os: String
     init(){
        
       
        self.token = " "
        self.language = "en"
        self.logid = 1
        self.appVersion = "test"
        self.os   = "ios"
    }
    func haveAccessToken() -> Bool {
        return self.token != " "
    }
    
    
    
    
}
