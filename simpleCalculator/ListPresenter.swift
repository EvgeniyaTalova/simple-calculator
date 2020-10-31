//
//  ListPresenter.swift
//  simpleCalculator
//
//  Created by Игорь Талов on 31.10.2020.
//  Copyright © 2020 Evgeniya Talova. All rights reserved.
//

import Foundation

final class ListPresenter {
    weak var view: ListViewInput?
    var interactor: ListInteractorInput

    init(view: ListViewInput,
         interactor: ListInteractorInput) {
        self.view = view
        self.interactor = interactor
    }
}

extension ListPresenter: ListViewOutput {
    func viewDidLoad() {
        interactor.fetchItems()
    }
}

extension ListPresenter: ListInteractorOutput {
    func didFetchItems(items: [Item]) {
        let viewModels = items.map { ListItem(title: $0.title, subtitle: $0.subtitle) }
        view?.display(viewModels: viewModels)
    }
}
