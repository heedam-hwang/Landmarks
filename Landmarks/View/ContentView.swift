//
//  ContentView.swift
//  Landmarks
//
//  Created by 황희담 on 2022/02/07.
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
