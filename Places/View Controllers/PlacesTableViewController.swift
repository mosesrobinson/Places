//
//  PlacesTableViewController.swift
//  Places
//
//  Created by Moses Robinson on 4/22/19.
//  Copyright © 2019 Moses Robinson. All rights reserved.
//

import UIKit

protocol PlaceSelectionDelegate: AnyObject {
    func placeWasSelected(place: Place)
}

class PlacesTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return placeController?.places.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlaceCell", for: indexPath)

        let place = placeController?.places[indexPath.row]
        
        cell.textLabel?.text = place?.name

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        guard let place = placeController?.places[indexPath.row] else { return }
        
        delegate?.placeWasSelected(place: place)
    }
    
    var placeController: PlaceController?
    weak var delegate: PlaceSelectionDelegate?

}
