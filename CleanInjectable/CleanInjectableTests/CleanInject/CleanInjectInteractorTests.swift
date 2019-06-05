//
//  CleanInjectInteractorTests.swift
//  CleanTestTests
//
//  Created by Sander Korebrits on 05/06/2019.
//  Copyright © 2019 Sander Korebrits. All rights reserved.
//

import XCTest
@testable import CleanInjectable

class CleanInjectInteractorTests: XCTestCase {
    
    var sut: CleanInjectInteractor!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testThatPresentDidPresentWhenListing() {
        //Arrange
        let spy = CleanInjectPresenterSpy()
        sut = CleanInjectInteractor(presenter: spy)
        
        //Act
        sut.loadViewModel()
        
        //Arrange
        XCTAssertTrue(spy.didPresentViewModel)
    }
}

private class CleanInjectPresenterSpy: CleanInjectPresenterDelegate {
    
    var display: CleanInjectDisplayDelegate?
    var didPresentViewModel = false
    
    func presentViewModel(name: String) {
        didPresentViewModel = true
    }
}
