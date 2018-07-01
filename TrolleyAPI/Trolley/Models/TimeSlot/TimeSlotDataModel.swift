//
//  TimeSlot.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class TimeSlotModel: NSObject,Codable {
    var timeslotDesc: String? = nil
    var timeslotPrice: String? = nil
    var timeslotCapacity: String? = nil
    var ordercount: String? = nil
    var calenderId: String? = nil
    var date: String? = nil
    var timeslotId: String? = nil
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
