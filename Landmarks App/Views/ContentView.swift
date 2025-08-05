//
//  ContentView.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/1/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            
            MapView()
                .frame(height: 300)
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            VStack(alignment: .leading) {
        
                Text("Turtle Rock")
                    .font(.title)
                    .foregroundColor(Color.black)
                HStack {
                    Text("Mann Bellani National Park")
                        .font(.subheadline)
                    Spacer()
                    Text("California")
                        .font(.subheadline)
                }
                
                Divider()
                
                Text("About Turtle Rock")
                    .font(.title2)
                Text("Descriptive Text Goes Here")
            }
            .padding()
            
            Spacer()
        }
            
        
    }
}

#Preview {
    ContentView()
}
