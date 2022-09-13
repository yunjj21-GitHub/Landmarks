//
//  ContentView.swift
//  Shared
//
//  Created by RP Kyobo on 2022/09/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            // 지도
            MapView()
                .ignoresSafeArea(edges : .top)
                .frame(height : 300)
            
            // 이미지
            CircleImage()
                .offset(y : -130)
                .padding(.bottom, -130)
            
            // 텍스트
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.title)
                
                HStack {
                    Text("Joshua Tree National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive text goes here.")
            }
            .padding()
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
