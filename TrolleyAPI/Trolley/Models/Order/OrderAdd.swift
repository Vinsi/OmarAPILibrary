//
//  OrderAdd.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation

@objc public class OrderRequestDataModel:NSObject, Codable {
    public var orderRewardClaimed: Int? = nil
    public var lastname: String?
    public var couponcode: String? = nil
    public var shippingApartmentno: String?
    public var shippingZonecode: String?
    public var shippingZoneid: String?
    @objc public class OrderItem: NSObject, Codable {
        public var productId: String?
        public var quantity: Int?
        public var categoryId: String?
        private enum CodingKeys: String, CodingKey {
            case productId = "product_id"
            case quantity
            case categoryId = "category_id"
        }
    }
    public var orderItems: [OrderItem]?
    public var telephone: String?
    @objc public class Payment:NSObject,Codable  {
        
       public enum Paymode:String,Codable{
            case cod
            case scod
            case card
        
                
            
        
            
        }
        
        
       @objc  public class CardModel:NSObject, Codable {
            public var cardCvv: String?
            public var cardNeed2save: Int?
            public var cardExpiryMonth: String?
            public var cardExpiryYear: String?
            public var cardToken: String?
            public var gateway: String?
            private enum CodingKeys: String, CodingKey {
                case cardCvv = "card_cvv"
                case cardNeed2save = "card_need2save"
                case cardExpiryMonth = "card_expiry_month"
                case cardExpiryYear = "card_expiry_year"
                case cardToken = "card_token"
                case gateway
            }
        }
        public var type: Paymode?
        
        public var value: CardModel? 
        public enum CodingKeys: String, CodingKey {
            case type
            case value
         
        }
    
      
       
        
   
        
    }
    
  
    public var payment: Payment?
    public var shippingZone: String?

   @objc public class Deliverytime: NSObject,Codable {
        public enum DeliveryType :String,Codable  {
            
            case normal
            case scheduled
            
                
            }
            
        
        @objc public class Slotdata:NSObject, Codable {
            public var slotid: String?
            public var slotdate: String?
        }
        public var slotdata: Slotdata?
        public var type: DeliveryType?
    }
    public var deliverytime: Deliverytime?
    public var firstname: String?
    public var shippingCountryid: String?
    public var email: String?
    public var orderSubtotal: Int?
    public var orderFinaltotal: Int?
    public var shippingCountry: String?
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
    public var orderId: String?
    public var deliveryDate: String?
    public var timeslotDesc: String?
    public var total: Float?
    private enum CodingKeys: String, CodingKey {
        case orderId = "order_id"
        case deliveryDate = "delivery_date"
        case timeslotDesc = "timeslot_desc"
        case total
    }
}



