//
//  ProductInteractor.swift
//  VIPER Products App
//
//  Created by Abhisek Prusty on 16/02/26.
//

import Foundation

protocol ProductInteractorProtocol {
    func fetchProducts()
}

class ProductInteractor: ProductInteractorProtocol {

    var presenter: ProductPresenterProtocol?
    private let apiService = APIService()

    func fetchProducts() {
        apiService.fetchProducts { products in
            self.presenter?.didFetchProducts(products)
        }
    }
}

