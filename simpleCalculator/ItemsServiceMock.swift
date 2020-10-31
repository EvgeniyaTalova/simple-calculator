//
//  ItemsServiceMock.swift
//  simpleCalculator
//
//  Created by Игорь Талов on 31.10.2020.
//  Copyright © 2020 Evgeniya Talova. All rights reserved.
//

import Foundation

final class ItemsServiceMock: ItemsService {
    func fetchItems() -> [Item] {
        let items: [Item] = [
            Item(title: "Title1", subtitle: "Subtitle1"),
            Item(title: "Title2", subtitle: "Subtitle2"),
            Item(title: "Title3", subtitle: "Subtitle3"),
            Item(title: "Title4", subtitle: "Subtitle4"),
            Item(title: "Title5", subtitle: "Subtitle5"),
        ]

        return items
    }
}
