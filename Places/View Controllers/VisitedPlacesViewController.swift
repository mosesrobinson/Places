//
//  VisitedPlacesViewController.swift
//  Places
//
//  Created by Moses Robinson on 4/22/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

class VisitedPlacesViewController: UIViewController, PlacesPresenter {
    var placeController: PlaceController?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    // MARK: - Navigation

    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "PlacesTable" {
            
            // get a places table view controller
            
            guard let placesTVC = segue.destination as? PlacesTableViewController else { return }
            
            // set the placecontroller
            placesTVC.placeController = placeController
            placesTVC.delegate = self
            placesTableViewController = placesTVC
            
        } else if segue.identifier == "MapView" {
            
            guard let mapVC = segue.destination as? MapViewController else { return }
            
            mapViewController = mapVC
        }
    }
    
    
    // MARK: - Properties
    
    var mapViewController: MapViewController?
    var placesTableViewController: PlacesTableViewController?
    
}

extension VisitedPlacesViewController: PlaceSelectionDelegate {
    func placeWasSelected(place: Place) {
        
        mapViewController?.location = place.location
    }
}
