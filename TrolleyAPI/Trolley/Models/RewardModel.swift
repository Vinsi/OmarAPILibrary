//
//  RewardModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class RewardModel: Codable {
    var customerRewardId: String!
    var customerId: String!
    var orderId: String!
    var description: String!
    var points: String!
    var dateAdded: Date!
    private enum CodingKeys: String, CodingKey {
        case customerRewardId = "customer_reward_id"
        case customerId = "customer_id"
        case orderId = "order_id"
        case description
        case points
        case dateAdded = "date_added"
    }
}
