//
//  YouutbeApp.swift
//  Youutbe
//
//  Created by Dachi Sagharadze on 05.11.24.
//

import SwiftUI
import FirebaseCore

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()
    return true
  }
}

@main
struct YouutbeApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
