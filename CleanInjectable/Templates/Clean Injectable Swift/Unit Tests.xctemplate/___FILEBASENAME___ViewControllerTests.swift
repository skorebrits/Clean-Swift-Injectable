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

class ___VARIABLE_sceneName___ViewControllerTests: XCTestCase {
    
    var sut: ___VARIABLE_sceneName___ViewController!
    
    override func setUp() {
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        sut = storyboard.instantiateViewController(withIdentifier: String(describing: ___VARIABLE_sceneName___ViewController.self)) as? ___VARIABLE_sceneName___ViewController
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testStoryboardHas___VARIABLE_sceneName___AsID() {
        //Assert
        XCTAssertNotNil(sut, "Please Rename StoryBoard ID to ___VARIABLE_sceneName___")
    }
    
    func testThatLabelIsUpdatedOnViewDidLoad() {
        //Arrange
        sut.interactor = ___VARIABLE_sceneName___Interactor(
            presenter: ___VARIABLE_sceneName___Presenter(display: sut)
        )
        let viewModel = ___VARIABLE_sceneName___ViewModel(label: "ViewController: ___VARIABLE_sceneName___")
        
        //Act
        let _ = sut.view
        
        //Assert
        XCTAssertEqual(viewModel.label, sut.label.text)
    }
    
    func testViewModelDidLoadOnViewDidLoad() {
        //Arrange
        let spy = CleanerInteractorSpy()
        sut.interactor = spy
        
        //Act
        let _ = sut.view
        
        //Assert
        XCTAssertTrue(spy.didLoadViewModel)
    }
}

private class CleanerInteractorSpy: ___VARIABLE_sceneName___InteractorDelegate {
    
    var presenter: ___VARIABLE_sceneName___PresenterDelegate?
    var didLoadViewModel = false
    
    func loadViewModel() {
        didLoadViewModel = true
    }
}
