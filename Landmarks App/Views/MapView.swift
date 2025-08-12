//
//  MapView.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/1/25.


// defines region based on individual landmark for mapview

import SwiftUI
import MapKit

struct MapView: View {
    var coordinate: CLLocationCoordinate2D // creates coordinate parameter to be passed in from landmarkdetail
    
    var body: some View {
        Map(position: .constant(.region(region)))
    }
    
    private var region: MKCoordinateRegion {
        
        MKCoordinateRegion(
        
            center: coordinate,
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            
        
        )
    }
}

#Preview {
    MapView(coordinate: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868))
}
