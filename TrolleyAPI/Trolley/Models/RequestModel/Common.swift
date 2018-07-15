//
//  Common.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/24/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
typealias EmptyTrolleyRequestModel = TrolleyRequestModel<String>
typealias ScheduledOrderDeleteRequestModel = TrolleyRequestModel<OrderDetailsRequestDataModel>
typealias RewardsRequestModel = EmptyTrolleyRequestModel
typealias CategoryRequestModel = EmptyTrolleyRequestModel
typealias UserInfoRequestModel = EmptyTrolleyRequestModel
typealias HistoryProductRequestModel = EmptyTrolleyRequestModel
typealias CountryRequestModel = EmptyTrolleyRequestModel
typealias OrderGetRequestModel = EmptyTrolleyRequestModel
func getRequestHeader()->HeaderRequestModel{
    let header = HeaderRequestModel()
    return header
}
func getRequestHeader(session:ITrolleyAppSession)->HeaderRequestModel{
    let header = HeaderRequestModel()
    header.accesstoken = session.token
    header.deviceOs    = session.os
    header.deviceTime  = session.deviceTime
    header.logid       = session.logid?.getNewID() ?? "--"
    header.appVersion  = session.appVersion
    return header
}
func isApiAuthenticated()->Bool {
    
    return true

    
}
func getAPIToken()->String {
    
    return ""
}
private func saveToken(){
    
    
}
func getStatus<Model:Any>(response:TrolleyResponseModel<Model>)->Status{
    let status =  Status();
    status.statusCode    = response.error!
    status.statusMessage = response.statusmessage!
    return status
}
