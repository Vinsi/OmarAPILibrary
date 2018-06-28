//
//  File.swift
//  TrolleyAPI
//
//  Created by vinsi on 27/06/2018.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
protocol ITrolleyAppSession{
    var  token:String   {get}
    var  language:String {get}
    var  deviceTime:Date  {get}
    var  logid:Int   {get }
    var  appVersion:String {get }
    var  os:String   {get}
    func haveAccessToken()->Bool
}

extension ITrolleyAppSession {
    
    var  deviceTime:Date  {
        
        return Date()
        
    }
    
}
