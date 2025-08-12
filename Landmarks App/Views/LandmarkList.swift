//
//  LandmarkList.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/5/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        
        
        NavigationSplitView { // creats columns progression for app, three columns

                   List(landmarks) { landmark in
                       NavigationLink { // this turns the dynnamic list into a navigable list linked to the landmark detail view

                           LandmarkDetail(landmark: landmark) //passes selected landmark into landmark detail from the list

                       } label: {

                           LandmarkRow(landmark: landmark)

                       }
                   }
                   .navigationTitle("Landmarks")
               } detail: {

                   Text("Select a Landmark")

               }
         // dtynamic list which displays all landmarks presented through landmarkRow
    }
}

#Preview {
    LandmarkList()
}
