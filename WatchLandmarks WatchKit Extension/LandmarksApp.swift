//
//  LandmarksApp.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by RP Kyobo on 2022/09/14.
//

import SwiftUI

@main
struct LandmarksApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView()
            }
        }

        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}
