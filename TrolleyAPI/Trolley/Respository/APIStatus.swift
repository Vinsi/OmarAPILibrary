//
//  APIStatus.swift
//  TrolleyAPI
//
//  Created by vinsi on 28/06/2018.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class APIStatus:Status{
    var rawdata:String?
    var header:HeaderResponseModel!
    private var endPointStatus:Status!
    private var operationStatus:Status!
    var status:Status!
    
    
    
    init(status:Status) {
        self.status = status
        self.operationStatus = status
    }
    func setEndPointStatus(status:Status){
        self.endPointStatus = status
        if self.operationStatus.hasError() == false {
            self.status = self.endPointStatus
        }
    }
    override var statusCode: Int {
        get {
            return self.status.statusCode
        }
        set {
            
            
        }
        
    }
    override var statusMessage: String {
        get {
            return self.status.statusMessage
        }
        set {
            
            
        }
        
    }
    
    
    public override func hasError()->Bool{
        
        
        
        return  self.status.hasError()
        
    }
}
