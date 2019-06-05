//
//  CleanInjectPresenter.swift
//  CleanTest
//
//  Created by Sander Korebrits on 05/06/2019.
//  Copyright © 2019 Sander Korebrits. All rights reserved.
//

import Foundation

protocol CleanInjectPresenterDelegate: AnyObject {
    var display: CleanInjectDisplayDelegate? { get }
    
    func presentViewModel(name: String)
}

class CleanInjectPresenter: CleanInjectPresenterDelegate {
    
    weak var display: CleanInjectDisplayDelegate?
    
    init(display: CleanInjectDisplayDelegate?) {
        self.display = display
    }
    
    func presentViewModel(name: String) {
        let viewModel = CleanInjectViewModel(label: "ViewController: \(name)")
        display?.display(viewModel: viewModel)
    }
}
