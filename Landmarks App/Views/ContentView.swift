//
//  ContentView.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/1/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var editMode: EditMode = .inactive
    @State private var selection: Tab = .featured // sets default tab as featured
    
    enum Tab { // enumerates to add tabs to switch between list view and featured view
        case list
        case featured
        case profile
    }

    var body: some View {

        TabView(selection: $selection) {
            
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
            
            ProfileHost()
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .tag(Tab.profile)
                .environment(\.editMode, $editMode)
            
        }   }

}

#Preview {

    ContentView()
        .environment(ModelData())
}
