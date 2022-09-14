//
//  CategoryHome.swift
//  Landmarks
//
//  Created by RP Kyobo on 2022/09/14.
//

import SwiftUI

struct CategoryHome: View {
    @EnvironmentObject var modelDate : ModelData
    
    var body: some View {
        NavigationView{
            List {
                modelDate.features[0].image
                    .resizable()
                    .scaledToFill()
                    .frame(height : 200)
                    .clipped()
                    .listRowInsets(EdgeInsets())
                
                ForEach(modelDate.categories.keys.sorted(), id : \.self) { key in
                    CategoryRow(categoryName: key, items: modelDate.categories[key]!)
                }
                .listRowInsets(EdgeInsets())
            }
            .navigationTitle("Featured")
        }
    }
}

struct CategoryHome_Previews: PreviewProvider {
    static var previews: some View {
        CategoryHome()
            .environmentObject(ModelData())
    }
}
