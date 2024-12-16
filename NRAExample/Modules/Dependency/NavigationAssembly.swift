//
//  NavigationAssembly.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

import Swinject
import SwinjectAutoregistration

class NavigationAssembly: Assembly {
    func assemble(container: Container) {
        container.autoregister(AppNavigation.self, initializer: AppNavigation.init)
            .inObjectScope(.weak)
    }
}
