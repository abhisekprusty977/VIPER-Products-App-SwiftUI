//
//  ProductListView.swift
//  VIPER Products App
//
//  Created by Abhisek Prusty on 16/02/26.
//

import SwiftUI

struct ProductListView: View {

    @ObservedObject var presenter: ProductPresenter

    var body: some View {

        NavigationView {
            List(presenter.products) { product in

                VStack(alignment: .leading, spacing: 6) {

                    Text(product.title)
                        .font(.headline)

                    Text(product.description)
                        .font(.subheadline)
                        .foregroundColor(.gray)

                    Text("₹ \(product.price)")
                        .font(.caption)
                        .foregroundColor(.blue)
                }
                .padding(.vertical, 4)
            }
            .navigationTitle("Products")
        }
        .onAppear {
            presenter.loadProducts()
        }
    }
}
