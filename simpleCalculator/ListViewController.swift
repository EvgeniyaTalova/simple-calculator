//
//  ListViewController.swift
//  simpleCalculator
//
//  Created by Игорь Талов on 31.10.2020.
//  Copyright © 2020 Evgeniya Talova. All rights reserved.
//

import UIKit

class ListViewController: UITableViewController {

    var output: ListViewOutput?

    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewDidLoad()
    }
}

private extension ListViewController {
    func comonInit() { }
}
