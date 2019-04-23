//
//  MapViewController.swift
//  Places
//
//  Created by Moses Robinson on 4/22/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    private func updateMapViewLocation() {
        
        guard let location = location, isViewLoaded else { return }
        
        let span = MKCoordinateSpan(latitudeDelta: 1, longitudeDelta: 1)
        let coordinate = CLLocationCoordinate2D(latitude: location.latitude, longitude: location.longitude)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        
        mapView.setRegion(region, animated: true)
    }
   
    var location: (latitude: Double, longitude: Double)? {
        didSet {
            updateMapViewLocation()
        }
    }
    
    @IBOutlet weak var mapView: MKMapView!
    
}
