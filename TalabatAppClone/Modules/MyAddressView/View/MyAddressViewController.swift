//
//  MyAddressViewController.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/31/22.
//

import UIKit
import GoogleMaps

class MyAddressViewController: UIViewController {

    //MARK:- Outlets
    @IBOutlet weak var gmaps: GMSMapView!
    
    //MARK:- Properties
    let ceo             : CLGeocoder = CLGeocoder()
    let marker          = GMSMarker()
    let locationManager = CLLocationManager()
    
    //MARK:- View Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navBarStyle()
        self.locationManagerConfig()

    }
    
    //MARK:- Methods
    private func navBarStyle() {
        UINavigationBar.appearance().barTintColor = .systemPink
        UINavigationBar.appearance().tintColor = UIColor.white
        navigationController?.isNavigationBarHidden = false
        title = "Choose your location"
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.foregroundColor : UIColor.white]
        navigationController?.navigationBar.backgroundColor = .systemRed
        
    }
    
    //MARK:- Actions


}
