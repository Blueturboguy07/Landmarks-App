//
//  ContentView.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/1/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .featured // sets default tab as featured
    
    enum Tab { // enumerates to add tabs to switch between list view and featured view
        case list
        case featured
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
            
        }   }

}

#Preview {

    ContentView()
        .environment(ModelData())
}
