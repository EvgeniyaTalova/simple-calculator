//
//  ListInteractor.swift
//  simpleCalculator
//
//  Created by Игорь Талов on 31.10.2020.
//  Copyright © 2020 Evgeniya Talova. All rights reserved.
//

import Foundation

final class ListInteractor {

    var output: ListInteractorOutput?

    private let itemService: ItemsService

    init(itemService: ItemsService) {
        self.itemService = itemService
    }
}

extension ListInteractor: ListInteractorInput {
    func fetchItems() {
        let items = itemService.fetchItems()
        output?.didFetchItems(items: items)
    }
}
