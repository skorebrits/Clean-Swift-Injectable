//
//  RootTableViewController.swift
//  CleanTest
//
//  Created by Sander Korebrits on 05/06/2019.
//  Copyright © 2019 Sander Korebrits. All rights reserved.
//

import UIKit

class RootTableViewController: UITableViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cleanInjectableViewController = segue.destination as? CleanInjectDisplayDelegate,
            segue.identifier == "presentCleanInject" {
            cleanInjectableViewController.interactor = CleanInjectInteractor(
                presenter: CleanInjectPresenter(display: cleanInjectableViewController)
            )
        }
    }
}
