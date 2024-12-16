//
//  RootView.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

import Foundation
import SwiftUI
import NRACore

/// First view in navigation stack, this view keps instance of `AppNavigation`. This view often mimicks layout of Splash Screen

struct RootView: View {

    // Initialization of AppNavigation, instance is kept via StateObject
    @StateObject private var appNavigation: AppNavigation = resolve()

    var body: some View {
        NavigationStack(path: $appNavigation.path) {
            VStack {
                Text("Root View")
            }
            // Using resolving method from NRACore
            .navigationDestination(resolve: AppNavigation.Navigation.self)

        }
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                appNavigation.push(.main)
            }
        }
    }
}
