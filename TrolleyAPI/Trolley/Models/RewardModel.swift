//
//  RewardModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class RewardModel:NSObject, Codable {
    public var customerRewardId: String!
    public var customerId: String!
    public var orderId: String!
     public var rewarddescription: String!
    public var points: String!
    public var dateAdded: Date!
    private enum CodingKeys: String, CodingKey {
        case customerRewardId = "customer_reward_id"
        case customerId = "customer_id"
        case orderId = "order_id"
        case rewarddescription = "description"
        case points
        case dateAdded = "date_added"
    }
}
