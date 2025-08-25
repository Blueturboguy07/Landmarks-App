//
//  Landmarks_AppApp.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/1/25.
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
struct Landmarks_AppApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    @State var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
