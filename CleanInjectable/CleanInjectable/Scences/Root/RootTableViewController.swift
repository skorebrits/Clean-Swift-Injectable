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
        if let cleanerViewController = segue.destination as? CleanInjectDisplayDelegate,
            segue.identifier == "presentCleanInject" {
            cleanerViewController.interactor = CleanInjectInteractor(
                presenter: CleanInjectPresenter(display: cleanerViewController)
            )
        }
    }
}
