//
//  LandmarkList.swift
//  WatchLandmarks WatchKit Extension
//
//  Created by RP Kyobo on 2022/09/15.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData : ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks : [Landmark] {
        modelData.landmarks.filter { landmark in
            (!showFavoritesOnly || landmark.isFavorite)
        }
    }
    
    var body: some View {
            NavigationView {
                List {
                    Toggle(isOn : $showFavoritesOnly){
                        Text("Favorites only")
                    }
                        ForEach(filteredLandmarks) { landmark in
                            NavigationLink{
                                LandmarkDetail(landmark: landmark)
                            } label: {
                                LandmarkRow(landmark: landmark)
                            }
                        }
                }
                .navigationTitle("Landmarks")
            }
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
            LandmarkList()
    }
}
