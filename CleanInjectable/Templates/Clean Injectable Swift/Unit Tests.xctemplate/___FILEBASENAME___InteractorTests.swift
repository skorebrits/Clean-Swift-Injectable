//
//  ___FILENAME___
//  ___PROJECTNAME___
//
//  Created by ___FULLUSERNAME___ on ___DATE___.
//  Copyright (c) ___YEAR___ ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was based on generated Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import XCTest
@testable import ___PROJECTNAMEASIDENTIFIER___

class ___VARIABLE_sceneName___InteractorTests: XCTestCase {
    
    var sut: ___VARIABLE_sceneName___Interactor!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testThatPresentDidPresentWhenListing() {
        //Arrange
        let spy = ___VARIABLE_sceneName___PresenterSpy()
        sut = ___VARIABLE_sceneName___Interactor(presenter: spy)
        
        //Act
        sut.loadViewModel()
        
        //Arrange
        XCTAssertTrue(spy.didPresentViewModel)
    }
}

private class ___VARIABLE_sceneName___PresenterSpy: ___VARIABLE_sceneName___PresenterDelegate {
    
    var display: ___VARIABLE_sceneName___DisplayDelegate?
    var didPresentViewModel = false
    
    func presentViewModel(name: String) {
        didPresentViewModel = true
    }
}
