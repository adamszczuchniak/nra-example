//
//  AppNavigation.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

import SwiftUI
import NRACore

final class AppNavigation: BaseNavigation<AppNavigation.Navigation> {
    enum Navigation: NavigationResolving {
        case root
        case main
        case red
        case green
        case form
        case result(text: String)

        @ViewBuilder
        func view() -> some View {
            switch self {
            case .root:
                ViewFactory.root
            case .main:
                ViewFactory.main
            case .red:
                ViewFactory.red
            case .green:
                ViewFactory.green
            case .form:
                ViewFactory.form
            case let .result(text):
                ViewFactory.result(text: text)
            }
        }
    }
}
