//
//  Main+LocationManager.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/31/22.
//

import UIKit
import CoreLocation

extension MainViewController: CLLocationManagerDelegate {
        
    func locationManagerConfig() {
        print("Location Manager configuration func")
        locationManager.delegate        = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("didUpdateLocations")
        guard let location  = locations.last else {return}
        let coordinate      = location.coordinate
        let longi           = coordinate.longitude
        let latit           = coordinate.latitude
        
        print("Longi = \(longi), Latit = \(latit)")
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error while getting location information \(error.localizedDescription)")
        print(error)
    }
    
}
