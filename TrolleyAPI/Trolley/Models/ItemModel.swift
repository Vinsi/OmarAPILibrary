//
//  ItemModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation

@objc public class ItemModel:NSObject, Codable {
    
    public var productId       : String? = nil
    public var productname     : String? = nil
    public var model           : String? = nil
    public var unit            : String? = nil
    public var weight          : String? = nil
    public var categoryId      : String? = nil
    public var categoryName     : String? = nil
    public var sortOrder       : Float?  = nil
    public var image           : String? = nil
    public var profitAmount    : MoneyModel?  = nil
    public var price           : MoneyModel?  = nil
    public var actualprice     : MoneyModel?  = nil
    public var offerprice      : MoneyModel?  = nil
    public var metaDescription : String? = nil
    public var status          : String? = nil
    public var productstock    : Float?  = nil
    public var sku             : String? = nil
    public var sortOrder1      : Float?  = nil
    public var weightClassid   : String? = nil
    public var languageId      : String? = nil
    
    public required init(from decoder: Decoder) throws {
           let container = try decoder.container(keyedBy: CodingKeys.self) // defining our (keyed) container
        
                productId       = try container.decode(String.self, forKey: CodingKeys.productId)
                productname     = try container.decode(String.self, forKey: CodingKeys.productname    ).htmlUnescape()
                model           = try container.decode(String.self, forKey: CodingKeys.model          )
                unit            = try container.decode(String.self, forKey: CodingKeys.unit           )
                weight          = try container.decode(String.self, forKey: CodingKeys.weight         )
                categoryId      = try container.decode(String.self, forKey: CodingKeys.categoryId     )
                image           = try container.decode(String.self, forKey: CodingKeys.image          )
                metaDescription = try container.decode(String.self, forKey: CodingKeys.metaDescription)
                status          = try container.decode(String.self, forKey: CodingKeys.status         )
                sku             = try container.decode(String.self, forKey: CodingKeys.sku            )
                languageId      = try container.decode(String.self, forKey: CodingKeys.languageId     )
                let scategoryName      = try container.decode(String.self, forKey: CodingKeys.categoryName     )
                weightClassid      = try container.decode(String.self, forKey: CodingKeys.weightClassid     )
               let s_sortOrder       = try container.decode(String.self, forKey: CodingKeys.sortOrder      )
               let s_profitAmount    = try container.decode(String.self, forKey: CodingKeys.profitAmount   )
               let s_price           = try container.decode(String.self, forKey: CodingKeys.price          )
               let s_actualprice     = try container.decode(String.self, forKey: CodingKeys.actualprice    )
               let s_offerprice      = try container.decode(String?.self, forKey: CodingKeys.offerprice     )
               let s_productstock    = try container.decode(String.self, forKey: CodingKeys.productstock   )
               let s_sortOrder1      = try container.decode(String.self, forKey: CodingKeys.sortOrder1     )
        
        

                 categoryName     =   scategoryName.htmlUnescape()
                 sortOrder        =   Float( s_sortOrder    )
                 profitAmount     =   MoneyModel(amount:Float( s_profitAmount )!)
                 price            =   MoneyModel(amount: Float(s_price)!)
                 actualprice      =   MoneyModel(amount: Float(s_actualprice)!  )
        if s_offerprice == nil {
             offerprice       =   MoneyModel(amount:Float( 0.00   ))
        }
        else {
            offerprice       =   MoneyModel(amount:Float( s_offerprice!   )!)
        }
                 productstock     =   Float( s_productstock )
                 sortOrder1       =   Float( s_sortOrder1   )
        

//     print("pid:" + productId!)

    }
    private enum CodingKeys: String, CodingKey {
        case productId = "product_id"
        case languageId = "language_id"
        case productname = "name"
    
        case model
        case unit
        case weight
   
        case categoryId = "orginal_catid"
        case categoryName = "categoryname"
        case sortOrder = "sort_order"
        case image
        case profitAmount = "prate"
        case price
        case actualprice
        case offerprice
        case metaDescription = "meta_description"
        case status
       
        case productstock  = "aproductstock"
        case sku
        case sortOrder1 = "sort_order2"
        case weightClassid = "weight_class_id"
    }
}

public extension ItemModel {
    
    public func isOfferAvailable()->Bool{
        guard let offer  = self.offerprice else {
            return false
            
        }
        if offer.unitValue() <= 0.0{
            return false
        }
        else
        {
            return true
        }
        
        
    }
   public func getImageUrl(toSize:Int)->URL? {
        
        guard let path = self.image else { return nil}
        
       
        let url = URL(fileURLWithPath: path)
        let fileExtension = url.pathExtension
        let fileWithoutExtension = url.deletingPathExtension().relativeString
        let imageBaseurl = "http://trolley.ae/image/cache"
        let resizeSquare = toSize
        let newurl = String(format: "%@/%@-%dx%d.%@",imageBaseurl,fileWithoutExtension,resizeSquare,resizeSquare,fileExtension)
        let escapedurl = newurl.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)
         let urlPath = URL(string: escapedurl!)
         return urlPath
    
    }
    public func getTagImageUrl()->URL? {
         guard let weightclassid = self.weightClassid else { return nil}
        let newurl = String(format: "http://www.trolley.ae/catalog/view/theme/default/image/%@m.png",weightclassid)
        let escapedurl = newurl.addingPercentEncoding(withAllowedCharacters: NSCharacterSet.urlQueryAllowed)
        let urlPath = URL(string: escapedurl!)
        return urlPath
    }
}
