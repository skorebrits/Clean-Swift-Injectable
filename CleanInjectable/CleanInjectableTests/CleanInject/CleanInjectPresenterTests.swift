//
//  CleanInjectPresenterTests.swift
//  CleanTestTests
//
//  Created by Sander Korebrits on 05/06/2019.
//  Copyright © 2019 Sander Korebrits. All rights reserved.
//

import XCTest
@testable import CleanInjectable

class CleanInjectPresenterTests: XCTestCase {
    
    var sut: CleanInjectPresenter!

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testThatDidDisplayWhenPresentingList() {
        //Arrange
        let spy = CleanInjectDisplaySpy()
        sut = CleanInjectPresenter(display: spy)
        
        //Act
        sut.presentViewModel(name: "")
        
        //Arrange
        XCTAssertTrue(spy.didDisplay)
    }
}

private class CleanInjectDisplaySpy: CleanInjectDisplayDelegate {
    
    var interactor: CleanInjectInteractorDelegate?
    var didDisplay = false
    
    func display(viewModel: CleanInjectViewModel) {
        didDisplay = true
    }
}
