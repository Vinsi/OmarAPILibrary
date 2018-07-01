//
//  TimeSlot.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class TimeSlotModel: NSObject,Codable {
    public var timeslotDesc: String? = nil
    public var timeslotPrice: String? = nil
    public var timeslotCapacity: String? = nil
    public var ordercount: String? = nil
    public var calenderId: String? = nil
    public var date: String? = nil
    public var timeslotId: String? = nil
    private enum CodingKeys: String, CodingKey {
        case timeslotDesc = "timeslot_desc"
        case timeslotPrice = "timeslot_price"
        case timeslotCapacity = "timeslot_capacity"
        case ordercount
        case calenderId = "calender_id"
        case date
        case timeslotId = "timeslot_id"
    }
}
