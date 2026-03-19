//
//  StartYourDayUIApp.swift
//  StartYourDayUI
//
//  Created by Yuri Cernov on 09/03/2026.
//

import SwiftUI

@main
struct StartYourDayApp: App {

    private let container = AppContainer()

    var body: some Scene {
        WindowGroup {
            AppRootView(container: container)
        }
    }
}
