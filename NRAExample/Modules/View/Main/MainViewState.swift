//
//  MainViewState.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

import Foundation

/// ViewState struct used to keep all view states in single place. Useful to pass single argument to dependency manager when specific view need be be resolved in runtime
struct MainViewState {
    var welcomeText: String = "Hello"

    init() {}
}
