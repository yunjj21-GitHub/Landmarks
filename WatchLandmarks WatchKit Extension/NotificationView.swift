//
//  NotificationView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by RP Kyobo on 2022/09/14.
//

import SwiftUI

struct NotificationView: View {
    var title : String?
    var message : String?
    var landmark : Landmark?
    
    var body: some View {
        VStack {
            if landmark != nil {
                CircleImage(image : landmark!.image.resizable())
                    .scaledToFit()
            }
            
            Text(title ?? "Unknown Ladmark")
                .font(.headline)
            
            Divider()
            
            Text(message ?? "You are within 5 miles of one of your favorite landmarks.")
                .font(.caption)
    
        }
        .lineLimit(0)
    }
}

struct NotificationView_Previews: PreviewProvider {
    static var previews: some View {
        Group{
            NotificationView()
            NotificationView(title : "Turtle Rock",
            message: "You are within 5 miles of Turtle Rock.",
                             landmark: ModelData().landmarks[0])
        }
    }
}
