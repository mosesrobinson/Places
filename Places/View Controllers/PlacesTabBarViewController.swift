//
//  PlacesTabBarViewController.swift
//  Places
//
//  Created by Moses Robinson on 4/22/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

class PlacesTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Pass the placeController to child view controllers
        // i.e.: share data between all the managed screens
        
        for childViewController in children {
            
            if let childViewController = childViewController as?
                PlacesPresenter {
                childViewController.placeController = placeController
            }
        }
    }
    
    
   let placeController = PlaceController()

}
