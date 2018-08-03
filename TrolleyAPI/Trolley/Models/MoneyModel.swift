//
//  MoneyModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 8/3/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc  public class MoneyModel:NSObject,Codable{
    
    open var value:Float!
    public init( amount:Float) {
        self.value = amount
    }
    public func unitValue()->Float{
        return self.value
        
    }
    public required init(from decoder: Decoder) throws {
        _ = try decoder.container(keyedBy: CodingKeys.self) // defining our (keyed) container
        
    }
    
}
