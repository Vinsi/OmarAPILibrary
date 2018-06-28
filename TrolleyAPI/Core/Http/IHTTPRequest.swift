//
//  IHTTPRequest.swift
//  TrolleyAPI
//
//  Created by vinsi on 28/06/2018.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
protocol IURLRequest {
    func asCoreURLRequest() throws -> URLRequest
}
