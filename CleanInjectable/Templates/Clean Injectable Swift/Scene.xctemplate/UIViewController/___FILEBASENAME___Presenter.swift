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

protocol ___VARIABLE_sceneName___PresenterDelegate: AnyObject {
    var display: ___VARIABLE_sceneName___DisplayDelegate? { get }
    
    func presentViewModel(name: String)
}

class ___VARIABLE_sceneName___Presenter: ___VARIABLE_sceneName___PresenterDelegate {
    
    weak var display: ___VARIABLE_sceneName___DisplayDelegate?
    
    init(display: ___VARIABLE_sceneName___DisplayDelegate?) {
        self.display = display
    }
    
    func presentViewModel(name: String) {
        let viewModel = ___VARIABLE_sceneName___ViewModel(label: "ViewController: \(name)")
        display?.display(viewModel: viewModel)
    }
}
