//
//  RedView.swift
//  NRAExample
//
//  Created by Adam Szczuchniak
//

import Foundation
import SwiftUI

struct RedView: View {
    // Will be initialized via constructor injection
    @ObservedObject var appNavigation: AppNavigation

    var body: some View {
        VStack {
            Text("Red View")

            Button("Push green view") {
                appNavigation.push(.green)
            }
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(.red)
    }
}
