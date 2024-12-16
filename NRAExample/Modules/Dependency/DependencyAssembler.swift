//
//  ViewAssembly.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

import Swinject
import SwinjectAutoregistration

enum DependencyAssembler {
    static let assembler: Assembler = {
        let assembler = Assembler([
            NavigationAssembly(),
            ViewAssembly(),
        ])

        return assembler
    }()
}

// MARK: - DEPENDENCY GLOBAL METHODS

public func resolve<T>() -> T {
    DependencyAssembler.assembler.resolver.resolve(T.self)!
}

public func resolve<T, Arg>(_ arg: Arg) -> T {
    DependencyAssembler.assembler.resolver.resolve(T.self, argument: arg)!
}
