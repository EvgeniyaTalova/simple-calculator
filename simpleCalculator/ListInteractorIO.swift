//
//  ListInteractorIO.swift
//  simpleCalculator
//
//  Created by Игорь Талов on 31.10.2020.
//  Copyright © 2020 Evgeniya Talova. All rights reserved.
//

import Foundation

protocol ListInteractorInput: AnyObject {
    func fetchItems()
}

protocol ListInteractorOutput: AnyObject {
    func didFetchItems(items: [Item])
}
