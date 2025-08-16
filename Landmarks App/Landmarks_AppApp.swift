//
//  Landmarks_AppApp.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/1/25.
//

import SwiftUI

@main
struct Landmarks_AppApp: App {
    
    @State var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}
