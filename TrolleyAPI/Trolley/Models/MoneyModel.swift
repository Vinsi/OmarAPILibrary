//
//  MoneyModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 8/3/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
open  class MoneyModel:NSObject,Codable{
    
    public var value:Float!
    public init( amount:Float) {
        self.value = amount
    }
    public func unitValue()->Float{
        return self.value
        
    }
    static public func + (lhs: MoneyModel, rhs: MoneyModel) -> MoneyModel {
        return  MoneyModel(amount:  lhs.value +  rhs.value)
        
    }
    static public func - (lhs: MoneyModel, rhs: MoneyModel) -> MoneyModel {
        return  MoneyModel(amount:  lhs.value -  rhs.value)
    }
    static public func * (lhs: MoneyModel, rhs: MoneyModel) -> MoneyModel {
        return  MoneyModel(amount:  lhs.value *  rhs.value)
    }

    static public func += ( left: inout MoneyModel, right: MoneyModel) {
        left.value = left.value + right.value
    }
    static public func -= ( left: inout MoneyModel, right: MoneyModel) {
        left.value = left.value - right.value
    }
    static public func *= ( left: inout MoneyModel, right: MoneyModel) {
        left.value = left.value * right.value
    }
    public required init(from decoder: Decoder) throws {
        _ = try decoder.container(keyedBy: CodingKeys.self) // defining our (keyed) container
        
    }
    
}
