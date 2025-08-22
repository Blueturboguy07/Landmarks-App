//
//  ProfileSummary.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/22/25.
//

import SwiftUI

struct ProfileSummary: View {
    @Environment(ModelData.self) var modelData
    
    var profile: Profile // brings in Profile
    
    var body: some View {
        
        ScrollView {
            VStack {
                Text(profile.username)
                    .bold()
                    .font(.title)
                Text("Notifications: \(profile.prefersNotifications ? "On": "Off" )")
                Text("Seasonal Photos: \(profile.seasonalPhoto.rawValue)")
                Text("Goal Date: \(profile.goalDate, style: .date)")
                
                Divider()
                
                VStack(alignment: .leading) {

                    Text("Completed Badges")
                        .font(.headline)
                        .padding(.leading)
                        .padding(.top)


                    ScrollView(.horizontal) {

                        HStack {

                            HikeBadge(name: "First Hike")
                            HikeBadge(name: "Earth Day")
                                .hueRotation(Angle(degrees: 90))
                            
                            HikeBadge(name: "Tenth Hike")
                                .grayscale(0.5)
                                .hueRotation(Angle(degrees: 45))
                        }
                        .padding(.bottom)
                        .padding(.leading)

                    }

                }
                
                Divider()
                
                VStack(alignment: .leading) {
                    
                    Text("Recent Hikes")
                        .font(.headline)
                    
                    HikeView(hike: modelData.hikes[0])
                }
            }
        }
    }
}

#Preview {
    ProfileSummary(profile: Profile.default)
        .environment(ModelData())
}
