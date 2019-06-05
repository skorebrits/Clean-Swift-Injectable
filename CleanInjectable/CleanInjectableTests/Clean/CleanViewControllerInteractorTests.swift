//
//  CleanViewControllerInteractorTests.swift
//  CleanTest
//
//  Created by Sander Korebrits on 03/06/2019.
//  Copyright (c) 2019 Sander Korebrits. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

@testable import CleanInjectable
import XCTest

class CleanViewControllerInteractorTests: XCTestCase{
    
    // MARK: Subject under test
    var sut: CleanInteractor!
  
    // MARK: Test lifecycle
    override func setUp(){
        super.setUp()
        setupCleanInteractor()
    }
  
    override func tearDown(){
        super.tearDown()
    }
  
    // MARK: Test setup
    func setupCleanInteractor(){
        sut = CleanInteractor()
    }
  
    // MARK: Test doubles
    class CleanPresentationLogicSpy: CleanPresentationLogic{

        var presentListItemCalled = false
    
        func presentListItem(response: Clean.ListItem.Response){
            presentListItemCalled = true
        }
    }
  
    // MARK: Tests
    func testDoSomething(){
        // Given
        let spy = CleanPresentationLogicSpy()
        sut.presenter = spy
        let request = Clean.ListItem.Request()
    
        // When
        sut.listItem(request: request)
    
        // Then
        XCTAssertTrue(spy.presentListItemCalled, "doSomething(request:) should ask the presenter to format the result")
  }
}
