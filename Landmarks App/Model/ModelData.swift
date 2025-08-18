//
//  Data.swift
//  Landmarks App
//
//  Created by Mann Bellani on 8/4/25.
//

import Foundation
import Observation

@Observable class ModelData {
    var landmarks: [Landmrk] = load(filename: "landmarkData.json")
    var hikes : [Hike] = load(filename: "hikeData.json") // loading hikes into model
}


func load<T: Decodable>( filename: String) -> T {
    
    let data: Data
    
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
            
    else {
        
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        
        data = try Data(contentsOf: file)
    } catch {
        
        fatalError("Couldn't load \(filename) from main bundle: \n\(error)")
    }
    
    do {
        
        let decoder  =  JSONDecoder()
        
        return try decoder.decode(T.self, from:data)
    } catch {
        
        fatalError("Couldn't parse \(filename) as \(T.self): \n\(error)")
    }
    
    

    
}
