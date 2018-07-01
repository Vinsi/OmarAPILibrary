//
//  TrolleyAPI+Api.swift
//  TrolleyAPI
//
//  Created by vinsi on 4/4/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
@objc public  class TrolleyAPIRemoteRepository :NSObject ,ITrolleyRepository
{

    

    
    private var httpEngine:IHTTPNetworkEngine = AlamoFireNetworkEngine()
    private var sessionObject:ITrolleyAppSession?
  
    convenience init(httpEngine:IHTTPNetworkEngine =  AlamoFireNetworkEngine(),
                     appSession:ITrolleyAppSession?,
                     environment:NetworkEnvironment ) {
        self.init()
        self.sessionObject = appSession
        APIRouters.apiEnvironment = environment
        self.httpEngine = httpEngine
    }

    // Catgory Fetch
    public func getAllCategories(callback: @escaping (APIStatus, [CategoryResponseDataModel]?) -> Void) -> IRequest {
        
        
        let obj    = CategoryRequestModel()
        obj.data   = " "
        obj.header = getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.Category.getAll(requestModel: obj),
                                                     responsetype: TrolleyResponseModel<[CategoryResponseDataModel]>.self) { (status, obj) in
                                                      
                                                        if status.hasError() == false {
                                                        status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                        status.header = obj?.header
                                                        }
                                                        callback(status,obj?.data)
        }
        return request
        
    }
    
    public func getItems(param:ProductsInCategoryRequestDataModel ,callback: @escaping (APIStatus, ProductsInCategoryResponseDataModel?) -> Void)->IRequest {
        
        let obj    = TrolleyRequestModel<ProductsInCategoryRequestDataModel>()
        obj.data   =  param
        obj.header = getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.Category.products(requestModel: obj ),
                                                     responsetype: TrolleyResponseModel<ProductsInCategoryResponseDataModel>.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status,obj?.data)
        }
        return request
        
    }
    
    // User
    
    public func auth(param: AuthRequestDataModel, callback: @escaping (APIStatus, AuthResponseDataModel?) -> Void)->IRequest {
        
        
        let obj    = TrolleyRequestModel<AuthRequestDataModel>()
        obj.data   = param
        obj.header = getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.User.auth(request: obj),
                                                     responsetype: TrolleyResponseModel<AuthResponseDataModel>.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status,obj?.data)
        }
        return request
        
        
    }
    public func userInfo( callback: @escaping (APIStatus, UserInfoResponseDataModel?) -> Void)->IRequest {
        
        
        let obj    = UserInfoRequestModel()
        obj.data   = " "
        obj.header = getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.User.info(request: obj),
                                                     responsetype: TrolleyResponseModel<UserInfoResponseDataModel>.self) { (status, obj) in
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status,obj?.data)
        }
        return request
        
        
    }
    public func userForgotPassword(param:ForgotPasswordDataRequestModel,callback: @escaping (APIStatus) -> Void)->IRequest {
        
        
        let obj    = TrolleyRequestModel<ForgotPasswordDataRequestModel>()
        obj.data   = param
        obj.header = getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.User.forgotpassword(request: obj),
                                                     responsetype: EmptyTrolleyResponseModel.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status)
        }
        return request
        
        
    }
    
    public func userSaveCart(param:CartItemDataRequestModel,callback: @escaping (APIStatus) -> Void)->IRequest {
    
    
    let obj    = TrolleyRequestModel<CartItemDataRequestModel>()
    obj.data   = param
    obj.header = getRequestHeader(session: self.sessionObject!)
    let request = self.httpEngine.performRequest(route: APIRouters.User.cartadd(request: obj),
    responsetype: EmptyTrolleyResponseModel.self) { (status, obj) in
        
        if status.hasError() == false {
            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
            status.header = obj?.header
        }
    callback(status)
    }
    return request
    
    
    }
    
    public func userResetPassword(param:PaswordResetDataRequestModel,callback: @escaping (APIStatus) -> Void)->IRequest {
    
    
    let obj    = TrolleyRequestModel<PaswordResetDataRequestModel>()
    obj.data   = param
    obj.header = getRequestHeader(session: self.sessionObject!)
    let request = self.httpEngine.performRequest(route: APIRouters.User.resetpassword(request: obj),
    responsetype: EmptyTrolleyResponseModel.self) { (status, obj) in
        if status.hasError() == false {
            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
            status.header = obj?.header
        }
    callback(status)
    }
    return request
    }
    
    public func userOrderedProducts(callback: @escaping (APIStatus,[ItemSearchModel]?) -> Void)->IRequest {
        let obj = HistoryProductRequestModel();
        obj.header =  getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.User.orderedProduct(request: obj),
                                                     responsetype: TrolleyResponseModel<[ItemSearchModel]>.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status,obj?.data)
        }
        return request
        
        
        
    }
    
    public func userInfoUpdate( param: UserInfoUpdateRequestDataModel, callback: @escaping (APIStatus) -> Void) -> IRequest {
        let obj    = TrolleyRequestModel<UserInfoUpdateRequestDataModel>()
    
        obj.header = getRequestHeader(session: self.sessionObject!)
        obj.data   = param
        let request = self.httpEngine.performRequest(route: APIRouters.User.infoUpdate(request: obj),
                                                     responsetype: TrolleyResponseModel<Array<String>>.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status)
        }
        return request
    }
    
    public func userAdd(param: UserNewAddModel, callback: @escaping (APIStatus) -> Void) -> IRequest {
        
        let obj    = TrolleyRequestModel<UserNewAddModel>()
        
        obj.header = getRequestHeader(session: self.sessionObject!)
        obj.data   = param
        let request = self.httpEngine.performRequest(route: APIRouters.User.add(request: obj),
                                                     responsetype: UserNewAddResponseModel.self) { (status, obj) in
                                                        
                                                        callback(status)
        }
        return request
    }
    
    public func reward(callback: @escaping (APIStatus,[RewardModel]?) -> Void)->IRequest {
        let obj    =  RewardsRequestModel()
        
        obj.header =  getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.User.reward(request: obj),
                                                     responsetype: TrolleyResponseModel<[RewardModel]>.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status,obj?.data)
        }
        return request
        
        
        
    }
    
    

    
    
   
    // Mark Cards
    public func savedCards( callback: @escaping (APIStatus, Array<SavedCardModel>?) -> Void)->IRequest {
        
        
        let obj    = TrolleyRequestModel<Array<String>>()
        obj.data   = nil
        obj.header = getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.Card.get(request: obj),
                                                     responsetype: TrolleyResponseModel<Array<SavedCardModel>>.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status,obj?.data)
        }
        return request
        
        
    }

   // Location
   
    public func locationAdd(param:NewLocationRequestDataModel ,callback: @escaping (APIStatus) -> Void)->IRequest {
        
        let obj    =  TrolleyRequestModel<NewLocationRequestDataModel>()
        obj.data   =  param
        obj.header =  getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.Location.add(request: obj ),
                                                     responsetype: TrolleyResponseModel<String?>.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status)
        }
        return request
        
    }
    
    public func locationChangeDefault(param:ChangeDefaultLocationRequestDataModel ,callback: @escaping (APIStatus) -> Void)->IRequest {
        
        let obj    =  TrolleyRequestModel<ChangeDefaultLocationRequestDataModel>()
        obj.data   =  param
        obj.header =  getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.Location.updateTodefault(request: obj ),
                                                     responsetype: TrolleyResponseModel<String?>.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status)
        }
        return request
        
    }
    
    public func locationUpdate(param:UpdateLocationRequestDataModel ,callback: @escaping (APIStatus) -> Void)->IRequest {
        
        let obj    =  TrolleyRequestModel<UpdateLocationRequestDataModel>()
        obj.data   =  param
        obj.header =  getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.Location.update(request: obj ),
                                                     responsetype: TrolleyResponseModel<String?>.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status)
        }
        return request
        
    }
    
    public func locationGetCountry(callback: @escaping (APIStatus,Array<CountryModel>?) -> Void)->IRequest {
        
        let obj    =  TrolleyRequestModel<CountryRequestModel>()
        
        obj.header =  getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.Location.getCountries(request: obj),
                                                     responsetype: TrolleyResponseModel<Array<CountryModel>>.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status,obj?.data)
        }
        return request
        
    }
    
    public func locationGetZone(param:ZoneRequestDataModel ,callback: @escaping (APIStatus,Array<ZoneModel>?) -> Void)->IRequest {
        
        let obj    =  TrolleyRequestModel<ZoneRequestDataModel>()
        obj.data   =  param
        obj.header =  getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.Location.getZones(request: obj ),
                                                     responsetype: TrolleyResponseModel<[ZoneModel]>.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status,obj?.data)
        }
        return request
        
    }
    
    //Time slot
    
    public func timeSlot(param:TimeSlotRequestDataModel,callback: @escaping (APIStatus,[TimeSlotModel]?) -> Void)->IRequest {
        let obj    =  TrolleyRequestModel<TimeSlotRequestDataModel>()
        obj.data   =  param
        obj.header =  getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route:APIRouters.TimeSlot.get(request: obj),
                                                     responsetype: TrolleyResponseModel<TimeSlotResponseDataModel>.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status,obj?.data)
        }
        return request
        
        
        
    }
    
    // Order
    public func orderAdd( param: OrderRequestDataModel, callback: @escaping (APIStatus, OrderResponseDataModel?) -> Void) -> IRequest {
        
        let obj    = TrolleyRequestModel<OrderRequestDataModel>()
        
        obj.header = getRequestHeader(session: self.sessionObject!)
        obj.data   = param
        let request = self.httpEngine.performRequest(route: APIRouters.Order.add(request: obj),
                                                     responsetype: TrolleyResponseModel<OrderResponseDataModel>.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status,obj?.data)
        }
        return request
    }
    
    
    public func ordersGet(callback: @escaping (APIStatus,[OrderGetDataModel]?) -> Void)->IRequest {
        let obj    =    OrderGetRequestModel()
        
        obj.header =  getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.Order.getOrders(request: obj),
                                                     responsetype: TrolleyResponseModel<[OrderGetDataModel]>.self) { (status, obj) in
                                                        
                                                        if status.hasError() == false {
                                                            status.setEndPointStatus(status: Status.CreateStatus(statusCode: (obj?.error)!, statusMessage: (obj?.statusmessage)!))
                                                            status.header = obj?.header
                                                        }
                                                        callback(status,obj?.data)
        }
        return request
        
        
        
    }
    
    public func ordersGetDetails(param:OrderDetailsRequestDataModel , callback: @escaping (APIStatus,[OrderDetailsResponseDataModel]?) -> Void)->IRequest {
        let obj    =    TrolleyRequestModel<OrderDetailsRequestDataModel>()
        obj.data   =   param
        obj.header =  getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.Order.productsOrdered(request: obj),
                                                     responsetype: TrolleyResponseModel<[OrderDetailsResponseDataModel]>.self) { (status, obj) in
                                                        
                                                        callback(status,obj?.data)
        }
        return request
        
        
        
    }
    // Mark search
    
    public func searchForName(param:SearchNameDataRequestModel, callback: @escaping (APIStatus,[ItemSearchModel]?) -> Void)->IRequest {
    let obj    =    TrolleyRequestModel<SearchNameDataRequestModel>()
    obj.data   =   param
    obj.header =  getRequestHeader(session: self.sessionObject!)
    let request = self.httpEngine.performRequest(route: APIRouters.Search.searchByName(request: obj),
    responsetype: TrolleyResponseModel<[ItemSearchModel]>.self) { (status, obj) in
    
    callback(status,obj?.data)
    }
    return request
    }
    
    public func searchForSku(param:SearchSkuRequestDataModel, callback: @escaping (APIStatus,[ItemSearchModel]?) -> Void)->IRequest {
        let obj    =    TrolleyRequestModel<SearchSkuRequestDataModel>()
        obj.data   =   param
        obj.header =  getRequestHeader(session: self.sessionObject!)
        let request = self.httpEngine.performRequest(route: APIRouters.Search.searchBySku(request: obj),
                                                     responsetype: TrolleyResponseModel<[ItemSearchModel]>.self) { (status, obj) in
                                                        
                                                        callback(status,obj?.data)
        }
        return request
    }

    
}
