//
//  PlaceController.swift
//  Places
//
//  Created by Moses Robinson on 4/22/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import Foundation

class PlaceController {
    
    /*
     Rochester, NY: 43.1566° N, -77.6088° W
     Salt Lake City, UT: 40.7608° N, -111.8910° W
     San Francisco, CA: 37.7749° N, -122.4194° W
     */
    
    init() {
        createPlace(with: "San Francisco, CA", latitude: 37.77, longitude: -122.41)
    }
    
    func createPlace(with name: String, latitude: Double, longitude: Double) {
        let place = Place(name: name, latitude: latitude, longitude: longitude)
        
        places.append(place)
    }
    
    var places: [Place] = []
}
