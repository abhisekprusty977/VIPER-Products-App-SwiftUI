//
//  SplashView.swift
//  VIPER Products App
//
//  Created by Abhisek Prusty on 16/02/26.
//

import SwiftUI

struct SplashView: View {

    @State private var isActive = false

    var body: some View {

        if isActive {
            ProductRouter.createModule()
        } else {
            VStack {
                Text("VIPER Products App")
                    .font(.largeTitle)
                    .bold()
            }
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                    isActive = true
                }
            }
        }
    }
}
