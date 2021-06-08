//
//  Environmental_Justice_MayApp.swift
//  Environmental Justice May
//
//  Created by Sasha on 5/25/21.
//

import SwiftUI
import Firebase

@main
struct Environmental_Justice_MayApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
      
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        Auth.auth().signInAnonymously()
       
        return true
    }
}
