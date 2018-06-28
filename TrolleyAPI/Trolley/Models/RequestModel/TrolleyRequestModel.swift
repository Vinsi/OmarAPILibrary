//
//  TrolleyResponseModel.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
class TrolleyRequestModel<RequestDataModel:Any> :Codable where RequestDataModel:Codable {
    
    var header:HeaderRequestModel? = HeaderRequestModel()
    var data:  RequestDataModel?   = nil
    
    
}
