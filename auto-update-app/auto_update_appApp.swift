//
//  auto_update_appApp.swift
//  auto-update-app
//
//  Created by Rafael Mejia on 6/3/23.
//

import SwiftUI

@main
struct auto_update_appApp: App {
    @StateObject var updaterViewModel = UpdaterViewModel()
        
        var body: some Scene {
            WindowGroup {
                ContentView()
            }
            .commands {
                CommandGroup(after: .appInfo) {
                    CheckForUpdatesView(updaterViewModel: updaterViewModel)
                }
            }
        }
}
