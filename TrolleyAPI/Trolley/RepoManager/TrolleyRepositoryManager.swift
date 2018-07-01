//
//  TrolleyRepositoryManager.swift
//  TrolleyAPI
//
//  Created by vinsi on 27/06/2018.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public protocol IRepositoryManager {
    var sessionConfigObject:ITrolleyAppSession? {get set}
     func accessPoint( )->ITrolleyRepository?
    
}
 @objc public class  TrolleyRepositoryManager:NSObject,IRepositoryManager{
   
    
    public var sessionConfigObject: ITrolleyAppSession? = nil
    var remoteTrolleyRepoObject:TrolleyAPIRemoteRepository? = nil
    let env:NetworkEnvironment = .production
    
    
    public func createRepo(){
        
        let obj = TrolleyAPIRemoteRepository(appSession: sessionConfigObject, environment: env)
        self.remoteTrolleyRepoObject = obj
    }
    public func accessPoint() -> ITrolleyRepository? {
        
        return self.remoteTrolleyRepoObject
        
        
    }
    
}

