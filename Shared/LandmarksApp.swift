//
//  LandmarksApp.swift
//  Shared
//
//  Created by RP Kyobo on 2022/09/08.
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
