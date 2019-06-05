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

import UIKit

protocol ___VARIABLE_sceneName___DisplayDelegate: AnyObject {
    var interactor: ___VARIABLE_sceneName___InteractorDelegate? { get set }
    
    func display(viewModel: ___VARIABLE_sceneName___ViewModel)
}

class ___VARIABLE_sceneName___ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var interactor: ___VARIABLE_sceneName___InteractorDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.loadViewModel()
    }
}

extension ___VARIABLE_sceneName___ViewController: ___VARIABLE_sceneName___DisplayDelegate {
    
    func display(viewModel: ___VARIABLE_sceneName___ViewModel) {
        label.text = viewModel.label
    }
}
