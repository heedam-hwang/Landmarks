//
//  LandmarkLists.swift
//  Landmarks
//
//  Created by 황희담 on 2022/02/07.
//

import SwiftUI

struct LandmarkList: View {
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly: Bool = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { landmark in
                (!showFavoritesOnly || landmark.isFavorite)
            }
        }
    
    var body: some View {
        NavigationView{
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("favorites only")
                }
                ForEach(filteredLandmarks) {  landmark in
                    NavigationLink{
                        LandmarkDetail(landmark: landmark)
                    }label: {
                        LandmarkRow(landmark: landmark)
                    }
            }
            .navigationTitle("Landmarks")
        }
    }
}

struct LandmarkLists_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkList()
            .previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
    }
}
}
