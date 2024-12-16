//
//  ResultViewModel.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

import Foundation

class ResultViewModel: ObservableObject {
    // MARK: - PUBLIC PROPERTIES

    @Published var viewState: ResultViewState

    // MARK: - PRIVATE PROPERTIES

    private let appNavigation: AppNavigation

    // MARK: - INITIALIZERS

    init(viewState: ResultViewState, appNavigation: AppNavigation) {
        self.viewState = viewState
        self.appNavigation = appNavigation
    }

    // MARK: - PUBLIC METHODS

    func pushFormView() {
        appNavigation.push(.form)
    }

    // MARK: - PRIVATE METHODS
}
