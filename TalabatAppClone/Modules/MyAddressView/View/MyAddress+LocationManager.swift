//
//  MyAddress+LocationManager.swift
//  TalabatAppClone
//
//  Created by Mahmoud on 8/31/22.
//

import Foundation
import GoogleMaps

extension MyAddressViewController: CLLocationManagerDelegate {
    
    func locationManagerConfig() {
        print("Location Manager configuration func")
        locationManager.delegate        = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("didUpdateLocations")
        if let location  = locations.last {
            let coordinate      = location.coordinate
            let longi           = coordinate.longitude
            let latit           = coordinate.latitude
            
            let camera = GMSCameraPosition.camera(withLatitude: latit, longitude: longi, zoom: 10)
            gmaps.camera = camera
            
            ceo.reverseGeocodeLocation(location) { (placeMarks, error) in
                if error != nil {
                    print("reverse geocode fail: \(error?.localizedDescription)")
                }
                let pm = placeMarks! as [CLPlacemark]
                if pm.count > 0 {
                    self.marker.title = pm[0].name!
                    self.marker.snippet = pm[0].country!
                    
                }
            }
            
            marker.position = CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
            marker.map = gmaps
            locationManager.stopUpdatingLocation()

            print("Longi = \(longi), Latit = \(latit)")

        }else{
            print("Error has been occured")
        }
        
}
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error while getting location information \(error.localizedDescription)")
        print(error)
    }
    
    
}
