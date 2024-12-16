//
//  ResultView.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

import Foundation
import SwiftUI

struct ResultView: View {
    @ObservedObject var viewModel: ResultViewModel

    var body: some View {
        VStack {
            Text("Typed text: \(viewModel.viewState.text)")

            Button("New Form View") {
                viewModel.pushFormView()
            }
        }
        .padding(20)
    }
}
