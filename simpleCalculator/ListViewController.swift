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

    private var viewModels: [ListItem] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        output?.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell",
                                                 for: indexPath) as? ListItemCell
        let viewModel = viewModels[indexPath.row]

        cell?.textLabel?.text = viewModel.title
        cell?.detailTextLabel?.text = viewModel.subtitle

        return cell ?? UITableViewCell()
    }
}

extension ListViewController: ListViewInput {
    func display(viewModels: [ListItem]) {
        self.viewModels = viewModels
        tableView.reloadData()
    }
}

private extension ListViewController {
    func comonInit() {
        tableView.register(ListItemCell.self,
                           forCellReuseIdentifier: "Cell")
    }
}
