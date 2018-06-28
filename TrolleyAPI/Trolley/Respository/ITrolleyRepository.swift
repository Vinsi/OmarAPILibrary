//
//  ITrolleyRepository.swift
//  TrolleyAPI
//
//  Created by vinsi on 6/20/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import Foundation
 protocol ITrolleyRepository {
    
     //Mark Category Repositories
    @discardableResult
    func getAllCategories(callback: @escaping (APIStatus, [CategoryResponseDataModel]?) -> Void) -> IRequest
    @discardableResult

    func getItems(param:ProductsInCategoryRequestDataModel ,callback: @escaping (APIStatus, ProductsInCategoryResponseDataModel?) -> Void)->IRequest
    
    //Mark User Repositories
    @discardableResult

    func auth(param: AuthRequestDataModel, callback: @escaping (APIStatus, AuthResponseDataModel?) -> Void)->IRequest
    @discardableResult

    func userForgotPassword(param:ForgotPasswordDataRequestModel,callback: @escaping (APIStatus) -> Void)->IRequest
    
    @discardableResult
    func userSaveCart(param:CartItemDataRequestModel,callback: @escaping (APIStatus) -> Void)->IRequest
    
    @discardableResult
    func userResetPassword(param:PaswordResetDataRequestModel,callback: @escaping (APIStatus) -> Void)->IRequest
      @discardableResult
    func userOrderedProducts(callback: @escaping (APIStatus,[ItemSearchModel]?) -> Void)->IRequest
     @discardableResult
    func userInfo( callback: @escaping (APIStatus, UserInfoResponseDataModel?) -> Void)->IRequest
      @discardableResult
    func userInfoUpdate( param: UserInfoUpdateRequestDataModel, callback: @escaping (APIStatus) -> Void) -> IRequest
      @discardableResult
    func userAdd(param: UserNewAddModel, callback: @escaping (APIStatus) -> Void) -> IRequest
      @discardableResult
    func reward(callback: @escaping (APIStatus,[RewardModel]?) -> Void)->IRequest
      @discardableResult
    func savedCards( callback: @escaping (APIStatus, Array<CardModel>?) -> Void)->IRequest
  
    
    //Mark Locations Repositories
      @discardableResult
    func locationAdd(param:NewLocationRequestDataModel ,callback: @escaping (APIStatus) -> Void)->IRequest
      @discardableResult
    func locationChangeDefault(param:ChangeDefaultLocationRequestDataModel ,callback: @escaping (APIStatus) -> Void)->IRequest
      @discardableResult
    func locationUpdate(param:UpdateLocationRequestDataModel ,callback: @escaping (APIStatus) -> Void)->IRequest
      @discardableResult
    func locationGetCountry(callback: @escaping (APIStatus,Array<CountryModel>?) -> Void)->IRequest
      @discardableResult
    func locationGetZone(param:ZoneRequestDataModel ,callback: @escaping (APIStatus,Array<ZoneModel>?) -> Void)->IRequest
    
    //Mark Timeslot Repositories
      @discardableResult
    func timeSlot(param:TimeSlotRequestDataModel,callback: @escaping (APIStatus,TimeSlotResponseDataModel?) -> Void)->IRequest
    
    //Mark Order Repositories
      @discardableResult
    func ordersGet(callback: @escaping (APIStatus,[OrderGetDataModel]?) -> Void)->IRequest
      @discardableResult
    func ordersGetDetails(param:OrderDetailsRequestDataModel , callback: @escaping (APIStatus,[OrderDetailsResponseDataModel]?) -> Void)->IRequest
      @discardableResult
    func orderAdd( param: OrderRequestDataModel, callback: @escaping (APIStatus, OrderResponseDataModel?) -> Void) -> IRequest
    
    //Mark Search Repositories
      @discardableResult
    func searchFor(param:SearchNameDataRequestModel, callback: @escaping (APIStatus,[ItemSearchModel]?) -> Void)->IRequest
      @discardableResult
    func searchFor(param:SearchSkuRequestDataModel, callback: @escaping (APIStatus,[ItemSearchModel]?) -> Void)->IRequest
    
}


