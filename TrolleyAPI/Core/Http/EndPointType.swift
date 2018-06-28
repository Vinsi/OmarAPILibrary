//
//  EndPoint.swift
//  NetworkLayer
//
//  Created by Malcolm Kumwenda on 2018/03/05.
//  Copyright © 2018 Malcolm Kumwenda. All rights reserved.
//

import Foundation

protocol EndPointType :IURLRequest {
    func path()->String
    var headers: [String:String]? { get }
    var method:HTTPMethods?{ get }
    var parameters:Codable? {get }
}
