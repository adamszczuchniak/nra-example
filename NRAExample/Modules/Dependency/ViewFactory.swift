//
//  ViewFactory.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

enum ViewFactory {

    static var root: RootView {
        resolve()
    }

    static var main: MainView {
        resolve()
    }

    static var red: RedView {
        resolve()
    }

    static var green: GreenView {
        resolve()
    }

    static var form: FormView {
        resolve()
    }

    static func result(text: String) -> ResultView {
        let viewState = ResultViewState(text: text)
        let viewModel: ResultViewModel = resolve(viewState)
        return resolve(viewModel)
    }

}
