//
//  CleanInjectViewControllerTests.swift
//  CleanTestTests
//
//  Created by Sander Korebrits on 05/06/2019.
//  Copyright © 2019 Sander Korebrits. All rights reserved.
//

import XCTest
@testable import CleanInjectable

class CleanInjectViewControllerTests: XCTestCase {
    
    var sut: CleanInjectViewController!

    override func setUp() {
        let bundle = Bundle.main
        let storyboard = UIStoryboard(name: "Main", bundle: bundle)
        sut = storyboard.instantiateViewController(withIdentifier: String(describing: CleanInjectViewController.self)) as? CleanInjectViewController
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testStoryboardHasCleanInjectAsID() {
        //Assert
        XCTAssertNotNil(sut, "Please Rename StoryBoard ID to CleanInject")
    }
    
    func testThatLabelIsUpdatedOnViewDidLoad() {
        //Arrange
        sut.interactor = CleanInjectInteractor(
            presenter: CleanInjectPresenter(display: sut)
        )
        let viewModel = CleanInjectViewModel(label: "ViewController: CleanInject")
        
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

private class CleanerInteractorSpy: CleanInjectInteractorDelegate {

    var presenter: CleanInjectPresenterDelegate?
    var didLoadViewModel = false
    
    func loadViewModel() {
        didLoadViewModel = true
    }
}
