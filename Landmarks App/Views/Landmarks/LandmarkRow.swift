//
//  LandmarkRow.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/5/25.


// invividual row view for list navigation, pulls from landmark array index. 

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmrk
    
    var body: some View {
        HStack {
            
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
            
            if landmark.isFavorite {

                Image(systemName: "star.fill")
                    .foregroundStyle(.yellow)

            }
        }
    }
}

#Preview ("Turtle Rock"){
    Group {
        LandmarkRow(landmark: ModelData().landmarks[0])
        LandmarkRow(landmark: ModelData().landmarks[1])
    }
    
}


