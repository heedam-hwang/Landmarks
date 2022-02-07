//
//  LandmarksApp.swift
//  Landmarks
//
//  Created by 황희담 on 2022/02/07.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @StateObject private var modelData = ModelData()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(modelData)
        }
    }
}
