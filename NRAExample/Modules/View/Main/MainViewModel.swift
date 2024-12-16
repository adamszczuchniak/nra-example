//
//  MainViewModel.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

import Foundation

class MainViewModel: ObservableObject {
    // MARK: - PUBLIC PROPERTIES

    @Published var viewState: MainViewState

    // MARK: - PRIVATE PROPERTIES

    // AppNavigation injected in viewModel
    private let appNavigation: AppNavigation

    // MARK: - INITIALIZERS

    init(viewState: MainViewState, appNavigation: AppNavigation) {
        self.viewState = viewState
        self.appNavigation = appNavigation
    }

    // MARK: - PUBLIC METHODS

    func pushRedView() {
        appNavigation.push(.red)
    }

    func pushGreenView() {
        appNavigation.push(.green)
    }

    func pushFormView() {
        appNavigation.push(.form)
    }

    func pushRedAndGreenViews() {
        appNavigation.push(.red, .green)
    }

    // MARK: - PRIVATE METHODS
}
