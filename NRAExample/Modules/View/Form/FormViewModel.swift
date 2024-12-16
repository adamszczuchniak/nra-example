//
//  FormViewModel.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

import Foundation

class FormViewModel: ObservableObject {
    // MARK: - PUBLIC PROPERTIES

    @Published var viewState: FormViewState

    // MARK: - PRIVATE PROPERTIES

    private let appNavigation: AppNavigation

    // MARK: - INITIALIZERS

    init(viewState: FormViewState, appNavigation: AppNavigation) {
        self.viewState = viewState
        self.appNavigation = appNavigation
    }

    // MARK: - PUBLIC METHODS

    func pushResultView() {
        let text = viewState.text
        appNavigation.push(.result(text: text))
    }

    // MARK: - PRIVATE METHODS
}
