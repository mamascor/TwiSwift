//
//  TwiSwiftApp.swift
//  TwiSwift
//
//  Created by Marco Mascorro on 6/10/23.
//

import SwiftUI
import Firebase
import FirebaseAuth


class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct TwiSwiftApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var body: some Scene {
        WindowGroup {
        
            LoginView()
        }
    }
}
