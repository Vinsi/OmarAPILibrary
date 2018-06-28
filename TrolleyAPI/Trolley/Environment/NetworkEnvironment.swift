//
//  NetworkEnvironment.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
enum NetworkEnvironment {
    case qa
    case production
    case staging
    func urlBase()->String{
        switch self {
        case .production: return "http://www.trolley.ae:80/image/data/icons_mobile/phpfiles/Trolley/public/api/v2"
        case .qa        : return "http://www.trolley.ae:80/image/data/icons_mobile/phpfiles/Trolley/public/api/v2"
        case .staging   : return "http://www.trolley.ae:80/image/data/icons_mobile/phpfiles/Trolley/public/api/v2"
        }
    }
}
