//
//  CustomNavigationLinkApp.swift
//  CustomNavigationLink
//
//  Created by sss on 08.05.2023.
//

import SwiftUI

@main
struct CustomNavigationLinkApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(item: Item(name: "Go22"))
            }
        }
    }
}
