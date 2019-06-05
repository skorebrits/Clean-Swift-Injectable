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

class ___VARIABLE_sceneName___PresenterTests: XCTestCase {
    
    var sut: ___VARIABLE_sceneName___Presenter!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testThatDidDisplayWhenPresentingList() {
        //Arrange
        let spy = ___VARIABLE_sceneName___DisplaySpy()
        sut = ___VARIABLE_sceneName___Presenter(display: spy)
        
        //Act
        sut.presentViewModel(name: "")
        
        //Arrange
        XCTAssertTrue(spy.didDisplay)
    }
}

private class ___VARIABLE_sceneName___DisplaySpy: ___VARIABLE_sceneName___DisplayDelegate {
    
    var interactor: ___VARIABLE_sceneName___InteractorDelegate?
    var didDisplay = false
    
    func display(viewModel: ___VARIABLE_sceneName___ViewModel) {
        didDisplay = true
    }
}
