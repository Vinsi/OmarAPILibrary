//
//  TrolleyAPITests.swift
//  TrolleyAPITests
//
//  Created by vinsi on 4/1/18.
//  Copyright © 2018 vinsi. All rights reserved.
//

import XCTest
import SwiftHash
import Fakery

@testable import TrolleyAPI

class TrolleyAPITests: XCTestCase {
    let session  = TrolleyAppSession()
    let manager  = TrolleyRepositoryManager()
    let secureManager = TrolleyRepositoryManager()
    
    override func setUp() {
       
        manager.sessionConfigObject = session
        manager.createRepo()
        let securesession =  TrolleyAppSession()
        securesession.token = "7_fdfeb4adbecf2fa6db1fa1441c600a50"
        secureManager.sessionConfigObject = securesession
        secureManager.createRepo()
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testCategoryFetch(){
    
       let expectation = XCTestExpectation(description: "getting")
        
        manager.accessPoint()?.getAllCategories(callback: { (status, categories) in
            
                if(status.hasError()){
                    print("failed"+status.statusMessage)
                    return
                }
                print(categories?[0].name)
                expectation.fulfill()
        
            
        })
        wait(for: [expectation], timeout: 20.0)
    }
    
    func testSearch(){
        
        let expectation = XCTestExpectation(description: "getting")
        let search = SearchNameDataRequestModel()
        search.key = "tea"
        manager.accessPoint()?.searchForName(param: search, callback: { (status, items) in
         
            
            if(status.hasError()){
                print("failed"+status.statusMessage)
                return
            }
            print(items?[0].productname)
            expectation.fulfill()
            
            
        })
        wait(for: [expectation], timeout: 20.0)
    }
    
    func testCategoryProductFetch(){
        
        let expectation = XCTestExpectation(description: "getting")
        let productRequest = ProductsInCategoryRequestDataModel()
        productRequest.categoryId = "2"
        manager.accessPoint()?.getItems(param: productRequest, callback: { (status, categories) in
            
            if(status.hasError()){
                print("failed"+status.statusMessage)
                return
            }
            
//            print(categories?.rows[)
            expectation.fulfill()
            
            
        })
        wait(for: [expectation], timeout: 20.0)
    }
    
    func testUserAuth() {

        let expectation = XCTestExpectation(description: "getting")
        let auth = AuthRequestDataModel()
        auth.login    =  "leo.winc@gmail.com"
        auth.password =  MD5("12")
        manager.accessPoint()?.auth(param: auth ){ (status, response) in
            if(status.hasError()){

                print("failed"+status.statusMessage)
                return

            }
            print(response?.accesstoken ?? "")
            expectation.fulfill()

        }


        wait(for: [expectation], timeout: 10.0)


    }
    func testUserAdd() {

        let expectation = XCTestExpectation(description: "Adding User")
        let newuser = UserNewAddModel()
        let fkr = Faker()
       newuser.firstname = fkr.name.firstName()
       newuser.lastname  = fkr.name.lastName()
       newuser.email     = fkr.internet.email()
       newuser.dob         = ""
       newuser.gender      = "Male"
       newuser.nationality = "Test"
       newuser.apartment   = "Villa1"
       newuser.areaid      = "248"
       newuser.instruction = ""
       newuser.apartment   = ""
       newuser.phonecode   = "52"
       newuser.religion    = ""
       newuser.password    = MD5("12")
       newuser.salutation  = "Mr"
       newuser.telephone   = ""
       newuser.zoneid      = ""



        manager.accessPoint()?.userAdd(param:newuser ) { (status) in


            if(status.hasError()){

                print("failed"+status.statusMessage)
                return

            }

            expectation.fulfill()

        }


        wait(for: [expectation], timeout: 10.0)


    }
    func testUserInfo() {

        let expectation = XCTestExpectation(description: "userinfo")
      
 
        secureManager.accessPoint()?.userInfo{ (status, userinfo) in
       


            if(status.hasError()){

                print("Failed Error "+status.statusMessage)
                return

            }
            print(userinfo?.userinfo?.customerId ?? "")
            expectation.fulfill()

        }


        wait(for: [expectation], timeout: 10.0)


    }
    func testUserInfoupdate() {

        let expectation = XCTestExpectation(description: "userinfo")

        let userinfo = UserInfoUpdateRequestDataModel()
        let fkr = Faker()
        userinfo.firstname   = "test"
        userinfo.lastname    = fkr.name.lastName()
        userinfo.email       = "leo.winc@gmail.com"
        userinfo.phonePrefix = "54"
        userinfo.telephone   = "2541251"
        secureManager.accessPoint()?.userInfoUpdate(param: userinfo, callback: { (status) in
        

            if(status.hasError()){

                print("failed"+status.statusMessage)
                return

            }
            print(status.statusMessage)
            expectation.fulfill()

        })


        wait(for: [expectation], timeout: 10.0)


    }
func testOrderAdd() {

        let expectation = XCTestExpectation(description: "orderadd")

        let order = OrderRequestDataModel()
        order.firstname             = "Vinsi"
        order.lastname              = "leo"
        order.email                 = "leo.winc@gmail.com"
        order.telephone             = "2541251"
        order.shippingZoneid        = "4709"
        order.shippingCountry       = "Al Barsha 1"
        order.shippingCountryid     = "245"
        order.shippingZonecode      = "A"
        order.shippingApartmentno   = "tart12"
        order.shippingZone          = "34 Villas Compound (Ggico)"

        let item = OrderRequestDataModel.OrderItem()
        item.categoryId = "100"
        item.productId  = "127352"
        item.quantity   = 1

        order.orderItems = [item]
        order.deliverytime = OrderRequestDataModel.Deliverytime()
        order.deliverytime?.type = .normal
        order.deliverytime?.slotdata = OrderRequestDataModel.Deliverytime.Slotdata()
        order.deliverytime?.slotdata?.slotdate = self.getdate(days: 1)
        order.deliverytime?.slotdata?.slotid   = "21"


        let payment  = OrderRequestDataModel.Payment()

        payment.type  = .cod
        payment.value = nil
        order.payment = payment











        secureManager.accessPoint()?.orderAdd(param: order) { (status,response) in


            if(status.hasError()){

                print("failed"+status.statusMessage)
                return

            }
            print(response?.deliveryDate)
            expectation.fulfill()

        }



        wait(for: [expectation], timeout: 10.0)


    }
    func testTimeSlot(){
        
       let expectation = XCTestExpectation(description: "fetch")
        let timeRequest = TimeSlotRequestDataModel()
        timeRequest.zonecode = "A"
        
        secureManager.accessPoint()?.timeSlot(param: timeRequest, callback: { (status, response) in
            
            if(status.hasError()){
                
                print("failed"+status.statusMessage)
                return
                
            }
           print( response?[0].timeslotDesc)
            expectation.fulfill()
        })
            wait(for: [expectation], timeout: 10.0)
        
    }
    
//    func testTimeSlotSchedule(){
//
//        let expectation = XCTestExpectation(description: "fetch")
//        let timeRequest = ()
//        timeRequest.zonecode = "A"
//
//        secureManager.accessPoint()?.timeSlot(param: timeRequest, callback: { (status, response) in
//
//            if(status.hasError()){
//
//                print("failed"+status.statusMessage)
//                return
//
//            }
//            print( response?[0].timeslotDesc)
//            expectation.fulfill()
//        })
//        wait(for: [expectation], timeout: 10.0)
//
//    }
    func getdate(days:Int,months:Int = 0 ,years:Int = 0 ,  format:String = "yyyy-MM-dd")->String{
        
        let monthsToAdd = months
        let daysToAdd = days
        let yearsToAdd = years
        let currentDate = Date()
        
        var dateComponent = DateComponents()
        
        dateComponent.month = monthsToAdd
        dateComponent.day = daysToAdd
        dateComponent.year = yearsToAdd
        
        let futureDate = Calendar.current.date(byAdding: dateComponent, to: currentDate)
        let dateFormatterGet = DateFormatter()
        dateFormatterGet.dateFormat = format
        
        
        let futuredateString = dateFormatterGet.string(from: futureDate!)
        return futuredateString
    }
    func testBanner(){
        
         let url =  secureManager.accessPoint()?.searchBannerURL(forCategoryID: "16")
        
        
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}

