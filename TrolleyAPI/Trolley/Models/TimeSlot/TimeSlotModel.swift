//
//  TimeSlotDataRequestModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class TimeSlotRequestDataModel:NSObject,Codable{
    
    public var zonecode:String?
    
    
}
typealias  TimeSlotResponseDataModel = [TimeSlotModel]
