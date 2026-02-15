//
//  APIService.swift
//  VIPER Products App
//
//  Created by Abhisek Prusty on 16/02/26.
//

import Foundation

class APIService {

    func fetchProducts(completion: @escaping ([Product]) -> Void) {

        guard let url = URL(string: "https://dummyjson.com/products") else {
            return
        }

        URLSession.shared.dataTask(with: url) { data, _, _ in

            guard let data = data else { return }

            let decoded = try? JSONDecoder().decode(ProductResponse.self, from: data)

            DispatchQueue.main.async {
                completion(decoded?.products ?? [])
            }

        }.resume()
    }
}

