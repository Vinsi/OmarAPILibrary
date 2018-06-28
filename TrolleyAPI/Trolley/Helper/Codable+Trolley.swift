//
//  Codable+Trolley.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/20/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
extension Encodable {
    func asDictionary() throws -> [String: Any] {
        let data = try JSONEncoder().encode(self)
        guard let dictionary = try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String: Any] else {
            throw NSError()
        }
        return dictionary
    }
    func asJsonString() throws -> String? {
        let jsonString = String(data: self as! Data, encoding: .utf8)
       return jsonString
    }
}
