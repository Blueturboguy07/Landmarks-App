//
//  LandmarkDetail.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/5/25.

//shows specific landmark after it is tapped

import SwiftUI

struct LandmarkDetail: View {
    
    var landmark: Landmrk // creates landmark parmater to pass in landmark from array
    
    var body: some View {
        
            ScrollView {
                
                MapView(coordinate: landmark.locationCoordinate) //passes location corrdinte in for selected landmark
                    .frame(height: 300)
                CircleImage(image: landmark.image) //passes location corrdinte in for selected landmark
                    .offset(y: -130)
                    .padding(.bottom, -130)
                VStack(alignment: .leading) {
            
                    Text(landmark.name)
                        .font(.title)
                        .foregroundColor(Color.black)
                    HStack {
                        Text(landmark.park)
                            .font(.subheadline)
                        Spacer()
                        Text(landmark.state)
                            .font(.subheadline)
                    }
                    
                    Divider()
                    
                    Text("About \(landmark.name)")
                        .font(.title2)
                    Text(landmark.description)
                }
                .padding()
                
                Spacer()
            }
                
            
        }

    
}

#Preview {
    LandmarkDetail(landmark: landmarks[0])
}
