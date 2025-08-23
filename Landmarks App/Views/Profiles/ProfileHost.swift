//
//  ProfileHost.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/22/25.
//

import SwiftUI

struct ProfileHost: View {
    
    @Environment(\.editMode) var editMode
    @Environment(ModelData.self) var modelData
    @State private var draftProfile = Profile.default
    var body: some View {
        VStack(alignment: .leading, spacing: 20){
            
            HStack{
                
                if editMode?.wrappedValue == .active {

                    Button("Cancel", role: .cancel) {

                        draftProfile = modelData.profile

                        editMode?.animation().wrappedValue = .inactive

                    }

                }
                
                Spacer()
                EditButton()
            }
            
            if editMode?.wrappedValue == .inactive {
                ProfileSummary(profile: modelData.profile)

            } else {
                
                ProfileEditor(profile: $draftProfile)
                
                // to populate the editor with the correct profile data and update the persistent profile when the user taps the Done button
                    .onAppear {

                        draftProfile = modelData.profile
                                        }
                    .onDisappear {
                        
                        modelData.profile = draftProfile

                                        }
                    
            }
            
            
        }
        .padding()
    }
}

#Preview {
    ProfileHost()
        .environment(ModelData()) // child view uses @Evironment proprty
}
