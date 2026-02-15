//
//  ProductRouter.swift
//  VIPER Products App
//
//  Created by Abhisek Prusty on 16/02/26.
//

import SwiftUI

class ProductRouter {

    static func createModule() -> some View {

        let presenter = ProductPresenter()
        let interactor = ProductInteractor()
        let router = ProductRouter()

        presenter.interactor = interactor
        presenter.router = router
        interactor.presenter = presenter

        return ProductListView(presenter: presenter)
    }
}

