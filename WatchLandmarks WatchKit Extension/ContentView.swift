//
//  ContentView.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by RP Kyobo on 2022/09/14.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
            LandmarkList()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
