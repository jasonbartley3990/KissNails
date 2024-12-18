//
//  KissNailsApp.swift
//  KissNails
//
//  Created by Jason bartley on 10/16/24.
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

struct myEditNailCustomizationApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @StateObject var enviroment: EnvironmentViewModel = EnvironmentViewModel()
    
    @StateObject private var networkManager = NetworkManager()
    
    var body: some Scene {
        WindowGroup {
            ContainerScreen()
                .environmentObject(enviroment)
                .environmentObject(networkManager)
                .environment(\.colorScheme, .light)
        }
    }
}
