//
//  ListviewIO.swift
//  simpleCalculator
//
//  Created by Игорь Талов on 31.10.2020.
//  Copyright © 2020 Evgeniya Talova. All rights reserved.
//

import Foundation

protocol ListViewInput: AnyObject {
    func display(viewModels: ListItem)
}

protocol ListViewOutput: AnyObject {
    func viewDidLoad()
}
