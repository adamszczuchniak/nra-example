//
//  MainView.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

import Foundation
import SwiftUI

struct MainView: View {

    // Will be initialized via constructor injection
    @ObservedObject var viewModel: MainViewModel

    var body: some View {
        VStack {
            HStack {
                Text(viewModel.viewState.welcomeText)
                Text("Main View")
            }

            Button("Push red view") {
                viewModel.pushRedView()
            }

            Button("Push green view") {
                viewModel.pushGreenView()
            }

            Button("Push red and then green views") {
                viewModel.pushRedAndGreenViews()
            }

            Button("Push Form View with TextField") {
                viewModel.pushFormView()
            }
        }
        .navigationBarBackButtonHidden()
    }
}
