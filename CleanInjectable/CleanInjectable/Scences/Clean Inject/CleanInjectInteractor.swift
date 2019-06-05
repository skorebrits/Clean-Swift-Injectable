//
//  CleanInjectInteractor.swift
//  CleanTest
//
//  Created by Sander Korebrits on 05/06/2019.
//  Copyright © 2019 Sander Korebrits. All rights reserved.
//

import Foundation

protocol CleanInjectInteractorDelegate: AnyObject {
    var presenter: CleanInjectPresenterDelegate? { get }
    
    func loadViewModel()
}

class CleanInjectInteractor: CleanInjectInteractorDelegate {
    
    var presenter: CleanInjectPresenterDelegate?
    
    init(presenter: CleanInjectPresenterDelegate?) {
        self.presenter = presenter
    }
    
    func loadViewModel() {
        let name = "CleanInject"
        presenter?.presentViewModel(name: name)
    }
}
