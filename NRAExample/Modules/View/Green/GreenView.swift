//
//  GreenView.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

import Foundation
import SwiftUI
import NRACore

struct GreenView: View {
    // Will be initialized via constructor injection
    @ObservedObject var appNavigation: AppNavigation

    var body: some View {
        VStack {
            Text("Green View")

            Button("Push red view") {
                appNavigation.push(.red)
            }

            Button("Pop single view") {
                appNavigation.pop()
            }

            Button("Pop to Main view") {
                appNavigation.popToRoot()
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.green)
    }
}
