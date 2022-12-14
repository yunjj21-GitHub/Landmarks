//
//  NotificationController.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by RP Kyobo on 2022/09/14.
//

import WatchKit
import SwiftUI
import UserNotifications

class NotificationController: WKUserNotificationHostingController<NotificationView> {
    var landmark : Landmark?
    var title : String?
    var message : String?
    
    let landmarkIndexkey = "landmarkIndex"

    override var body: NotificationView {
        return NotificationView(
            title : title,
            message: message,
            landmark: landmark
        )
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    override func didReceive(_ notification: UNNotification) {
        let modelData = ModelData()
            
        let notificationData =
            notification.request.content.userInfo as? [String : Any]
            
        let aps = notificationData?["aps"] as? [String : Any]
        let alert = aps?["alert"] as? [String : Any]
        
        title = alert?["title"] as? String
        message = alert?["body"] as? String
        
        if let index = notificationData?[landmarkIndexkey] as? Int {
            landmark = modelData.landmarks[index]
        }
    }
}
