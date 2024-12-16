//
//  ViewAssembly.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

import Foundation

import Swinject
import SwinjectAutoregistration

class ViewAssembly: Assembly {
    func assemble(container: Swinject.Container) {
        // MARK: - ROOT VIEW
        container.autoregister(RootView.self, initializer: RootView.init)

        // MARK: - MAIN VIEW
        container.autoregister(MainViewState.self, initializer: MainViewState.init)
        container.autoregister(MainViewModel.self, initializer: MainViewModel.init)
            .inObjectScope(.weak) // .weak is using ARC. ViewModel instance will be intialized after first push on navigation stack and kept in memory until related view is in navigation stack. This scope allows to call viewModel's constructor only once
        container.autoregister(MainView.self, initializer: MainView.init)

        // MARK: - RED VIEW
        container.autoregister(RedView.self, initializer: RedView.init)

        // MARK: - GREEN VIEW
        container.autoregister(GreenView.self, initializer: GreenView.init)

        // MARK: - FORM VIEW
        container.autoregister(FormViewState.self, initializer: FormViewState.init)
        container.autoregister(FormViewModel.self, initializer: FormViewModel.init)
            .inObjectScope(.graph) /// `.graph` is a default scope. `viewModel` will be resolved after each navigation stack change. This allows to reuse `viewModel` with different `viewState` parameters
        container.autoregister(FormView.self, initializer: FormView.init)

        // MARK: - RESULT VIEW
        container.autoregister(ResultViewModel.self, argument: ResultViewState.self, initializer: ResultViewModel.init)
            .inObjectScope(.graph)
        container.autoregister(ResultView.self, argument: ResultViewModel.self, initializer: ResultView.init)
    }
}
