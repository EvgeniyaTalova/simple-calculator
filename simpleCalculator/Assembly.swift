//
//  Assembly.swift
//  simpleCalculator
//
//  Created by Игорь Талов on 31.10.2020.
//  Copyright © 2020 Evgeniya Talova. All rights reserved.
//

import UIKit

@objc
final class Assembly: NSObject {
    @objc
    func createModule() -> UIViewController {
        let viewController = ListViewController(style: .grouped)
        let interactor = ListInteractor(itemService: ItemsServiceMock())
        let presenter = ListPresenter(view: viewController, interactor: interactor)
        viewController.output = presenter
        interactor.output = presenter

        return viewController
    }
}
