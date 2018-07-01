//
//  OrderAdd.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation

@objc public class OrderRequestDataModel:NSObject, Codable {
    var orderRewardClaimed: Int? = nil
    var lastname: String?
    var couponcode: String? = nil
    var shippingApartmentno: String?
    var shippingZonecode: String?
    var shippingZoneid: String?
    @objc public class OrderItem: NSObject, Codable {
        var productId: String?
        var quantity: Int?
        var categoryId: String?
        private enum CodingKeys: String, CodingKey {
            case productId = "product_id"
            case quantity
            case categoryId = "category_id"
        }
    }
    var orderItems: [OrderItem]?
    var telephone: String?
    class Payment:Codable  {
        
        enum Paymode:String,Codable{
            case cod
            case scod
            case card
        
                
            
        
            
        }
        
        
        class CardModel: Codable {
            var cardCvv: String?
            var cardNeed2save: Int?
            var cardExpiryMonth: String?
            var cardExpiryYear: String?
            var cardToken: String?
            var gateway: String?
            private enum CodingKeys: String, CodingKey {
                case cardCvv = "card_cvv"
                case cardNeed2save = "card_need2save"
                case cardExpiryMonth = "card_expiry_month"
                case cardExpiryYear = "card_expiry_year"
                case cardToken = "card_token"
                case gateway
            }
        }
        var type: Paymode?
        
        var value: CardModel? 
        public enum CodingKeys: String, CodingKey {
            case type
            case value
         
        }
    
      
       
        
   
        
    }
    
  
    var payment: Payment?
    var shippingZone: String?

    class Deliverytime: Codable {
        enum DeliveryType :String,Codable  {
            
            case normal
            case scheduled
            
                
            }
            
        
        class Slotdata: Codable {
            var slotid: String?
            var slotdate: String?
        }
        var slotdata: Slotdata?
        var type: DeliveryType?
    }
    var deliverytime: Deliverytime?
    var firstname: String?
    var shippingCountryid: String?
    var email: String?
    var orderSubtotal: Int?
    var orderFinaltotal: Int?
    var shippingCountry: String?
    private enum CodingKeys: String, CodingKey {
        case orderRewardClaimed = "order_reward_claimed"
        case lastname
        case couponcode
        case shippingApartmentno = "shipping_apartmentno"
        case shippingZonecode = "shipping_zonecode"
        case shippingZoneid = "shipping_zoneid"
        case orderItems = "order_items"
        case telephone
        case payment
        case shippingZone = "shipping_zone"

        case deliverytime
        case firstname
        case shippingCountryid = "shipping_countryid"
        case email
        case orderSubtotal = "order_subtotal"
        case orderFinaltotal = "order_finaltotal"
        case shippingCountry = "shipping_country"
    }
}

@objc public class OrderResponseDataModel: NSObject,Codable {
    var orderId: String?
    var deliveryDate: String?
    var timeslotDesc: String?
    var total: Float?
    private enum CodingKeys: String, CodingKey {
        case orderId = "order_id"
        case deliveryDate = "delivery_date"
        case timeslotDesc = "timeslot_desc"
        case total
    }
}



