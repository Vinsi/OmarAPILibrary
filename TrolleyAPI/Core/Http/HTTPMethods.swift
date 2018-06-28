//
//  HttpMethods.swift
//  TrolleyAPI
//
//  Created by vinsi on 28/06/2018.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
public enum HTTPMethods: String {
    case options = "OPTIONS"
    case get     = "GET"
    case head    = "HEAD"
    case post    = "POST"
    case put     = "PUT"
    case patch   = "PATCH"
    case delete  = "DELETE"
    case trace   = "TRACE"
    case connect = "CONNECT"
}
