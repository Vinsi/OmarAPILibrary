//
//  TrolleyRepositoryManager.swift
//  TrolleyAPI
//
//  Created by vinsi on 27/06/2018.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
protocol IRepositoryManager {
    var sessionConfigObject:ITrolleyAppSession? {get set}
     func accessPoint( )->ITrolleyRepository?
    
}
class TrolleyRepositoryManager:IRepositoryManager{
   
    
    public var sessionConfigObject: ITrolleyAppSession? = nil
    var remoteTrolleyRepoObject:TrolleyAPIRemoteRepository? = nil
    let env:NetworkEnvironment = .production
    
    
    func createRepo(){
        
        let obj = TrolleyAPIRemoteRepository(appSession: sessionConfigObject, environment: env)
        self.remoteTrolleyRepoObject = obj
    }
     func accessPoint() -> ITrolleyRepository? {
        
        return self.remoteTrolleyRepoObject
        
        
    }
    
}

