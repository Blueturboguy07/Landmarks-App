//
//  LandmarkRow.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/5/25.


// invividual row view for list navigation

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmrk
    
    var body: some View {
        HStack {
            
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
        }
    }
}

#Preview {
    LandmarkRow(landmark: landmarks[0])
}
