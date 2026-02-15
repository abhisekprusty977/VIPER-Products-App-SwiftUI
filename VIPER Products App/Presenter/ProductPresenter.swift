//
//  ProductPresenter.swift
//  VIPER Products App
//
//  Created by Abhisek Prusty on 16/02/26.
//

import Foundation
import Combine

protocol ProductPresenterProtocol {
    func didFetchProducts(_ products: [Product])
}

class ProductPresenter: ObservableObject {

    @Published var products: [Product] = []

    var interactor: ProductInteractorProtocol?
    var router: ProductRouter?

    func loadProducts() {
        interactor?.fetchProducts()
    }
}

extension ProductPresenter: ProductPresenterProtocol {

    func didFetchProducts(_ products: [Product]) {
        self.products = products
    }
}

