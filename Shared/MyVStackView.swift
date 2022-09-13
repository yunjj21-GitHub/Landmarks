//
//  MyVStackView.swift
//  Landmarks
//
//  Created by RP Kyobo on 2022/09/08.
//

import Foundation
import SwiftUI

struct MyVStackView : View{
    var body : some View {
        VStack{
            Text("1")
                .fontWeight(.bold)
                .font(.system(size: 60))
                .padding()
            Text("2")
                .fontWeight(.bold)
                .font(.system(size: 60))
                .padding()
            Text("3")
                .fontWeight(.bold)
                .font(.system(size: 60))
                .padding()
        }
        .background(Color.blue)
    }
}
