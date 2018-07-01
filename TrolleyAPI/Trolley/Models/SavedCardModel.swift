//
//  CardModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public class SavedCardModel: NSObject, Codable {
   
    public var id           : String?    = nil
    public var cardId       : String?    = nil
    public var expiryMonth  : String?    = nil
    public var expiryYear   : String?    = nil
    public var paymentMethod: String?    = nil
    public var recurring    : String?    = nil
    public var dateAdded    : Date?      = nil
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
