//
//  TestApp.swift
//  Test
//
//  Created by Uddeshya Singh on 05/02/25.
//

import SwiftUI
import SwiftData

@main
struct TestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .onAppear {
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                        if let window = NSApplication.shared.windows.first {
                            window.toggleFullScreen(nil)
                    }
                }
            }
        }
    }
}
