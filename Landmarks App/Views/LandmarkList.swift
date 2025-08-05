//
//  LandmarkList.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/5/25.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List(landmarks) { landmark in
            
            LandmarkRow(landmark: landmark)
        } // dtynamic list which displays all landmarks presented through landmarkRow  
    }
}

#Preview {
    LandmarkList()
}
