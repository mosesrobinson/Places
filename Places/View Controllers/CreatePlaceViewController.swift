//
//  CreatePlaceViewController.swift
//  Places
//
//  Created by Moses Robinson on 4/22/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

class CreatePlaceViewController: UIViewController, PlacesPresenter {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func savePlaceButtonPressed(_ sender: Any) {
        
        guard let name = locationTextField.text,
            let latitudeString = latitudeTextField.text,
            let latitude = Double(latitudeString),
            let longitudeString = longitudetextField.text,
            let longitude = Double(longitudeString) else { return }
        
        placeController?.createPlace(with: name, latitude: latitude, longitude: longitude)
        
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    var placeController: PlaceController?

    
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var latitudeTextField: UITextField!
    @IBOutlet weak var longitudetextField: UITextField!
    
}
