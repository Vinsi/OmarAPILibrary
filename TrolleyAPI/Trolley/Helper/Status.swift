//
//  Status.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/4/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class Status {
    
    var statusMessage:String = ""
    var statusCode:Int = 0
   
  
    func hasError()->Bool{
        return statusCode > 0
        
    }
    static func CreateStatus(statusCode:Int, statusMessage:String)->Status{
        let st = Status()
        st.statusCode = statusCode
        st.statusMessage = statusMessage
        return st
    }
    
    static func networkFailureStatus()->Status{
        let st = Status()
        st.statusCode = 10000
        st.statusMessage = NSLocalizedString("Network Error", comment: "")
        return st
    }
    static func networkFailureParsing(message:String)->Status{
        let st = Status()
        st.statusCode = 10001
        st.statusMessage = NSLocalizedString("Parsing Error" + message, comment: "")
        return st
    }
    static func networkEmptyResponse()->Status{
        let st = Status()
        st.statusCode = 10002
        st.statusMessage = NSLocalizedString("EmptyResponse Error", comment: "")
        return st
    }
    static func networkSuccess()->Status{
        let st = Status()
        st.statusCode = 0
        st.statusMessage = NSLocalizedString("Success", comment: "")
        return st
    }
}

