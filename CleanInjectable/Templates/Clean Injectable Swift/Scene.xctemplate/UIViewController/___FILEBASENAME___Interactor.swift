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

import Foundation

protocol ___VARIABLE_sceneName___InteractorDelegate: AnyObject {
    var presenter: ___VARIABLE_sceneName___PresenterDelegate? { get }
    
    func loadViewModel()
}

class ___VARIABLE_sceneName___Interactor: ___VARIABLE_sceneName___InteractorDelegate {
    
    var presenter: ___VARIABLE_sceneName___PresenterDelegate?
    
    init(presenter: ___VARIABLE_sceneName___PresenterDelegate?) {
        self.presenter = presenter
    }
    
    func loadViewModel() {
        let name = "___VARIABLE_sceneName___"
        presenter?.presentViewModel(name: name)
    }
}
