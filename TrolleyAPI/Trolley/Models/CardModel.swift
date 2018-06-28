//
//  CardModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class CardModel: Codable {
   
    var id           : String?    = nil
    var cardId       : String?    = nil
    var expiryMonth  : String?    = nil
    var expiryYear   : String?    = nil
    var paymentMethod: String?    = nil
    var recurring    : String?    = nil
    var dateAdded    : Date?      = nil
    private enum CodingKeys: String, CodingKey {
        case id
        case cardId = "card_id"
        case expiryMonth = "expiry_month"
        case expiryYear = "expiry_year"
        case paymentMethod = "payment_method"
        case recurring
        case dateAdded = "date_added"
    }
}
