//
//  FormView.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

import Foundation
import SwiftUI

struct FormView: View {

    @ObservedObject var viewModel: FormViewModel

    var body: some View {
        VStack {
            TextField("Type some text:", text: $viewModel.viewState.text)

            Button("Push Result View with text") {
                viewModel.pushResultView()
            }
        }
        .padding(20)
    }
}
