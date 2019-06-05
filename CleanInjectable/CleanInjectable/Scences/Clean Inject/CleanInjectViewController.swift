//
//  CleanInjectViewController.swift
//  CleanTest
//
//  Created by Sander Korebrits on 05/06/2019.
//  Copyright © 2019 Sander Korebrits. All rights reserved.
//

import UIKit

protocol CleanInjectDisplayDelegate: AnyObject {
    var interactor: CleanInjectInteractorDelegate? { get set }
    
    func display(viewModel: CleanInjectViewModel)
}

class CleanInjectViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    var interactor: CleanInjectInteractorDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()
        interactor?.loadViewModel()
    }
}

extension CleanInjectViewController: CleanInjectDisplayDelegate {
    
    func display(viewModel: CleanInjectViewModel) {
        label.text = viewModel.label
    }
}
