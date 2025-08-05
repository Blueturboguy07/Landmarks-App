//
//  MapView.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/1/25.


// defines region based on individual landmark for mapview

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        Map(initialPosition: .region(region))
    }
    
    private var region: MKCoordinateRegion {
        
        MKCoordinateRegion(
        
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.116_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
            
        
        )
    }
}

#Preview {
    MapView()
}
