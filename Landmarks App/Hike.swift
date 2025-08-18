//
//  Hike.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/18/25.
//
// File to unpack data from HikeData

import Foundation

struct Hike: Codable, Hashable, Identifiable {
    
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]
    
    static var formatter = LengthFormatter()
    
    var distanceText: String {
        
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }
    
    struct Observation: Codable, Hashable {
        
        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
    
}
