//
//  ViewController.swift
//  DemoMap
//
//  Created by Ios Mac on 30/11/21.
//

import UIKit
import MapKit
import GooglePlaces
import GoogleMaps
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate {
   

    @IBOutlet weak var googleMap: GMSMapView!
    
    
    let loactionManager =  CLLocationManager()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        loactionManager.delegate = self
        if CLLocationManager.locationServicesEnabled() {
            loactionManager.requestLocation()
        }
        else {
            loactionManager.requestWhenInUseAuthorization()
        }
        
    }
    
    
    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        switch CLLocationManager.authorizationStatus() {
        case .authorizedAlways:
            return
        case .authorizedWhenInUse:
            return
        case .denied:
            return
        case .restricted:
            loactionManager.requestWhenInUseAuthorization()
        case .notDetermined:
            loactionManager.requestWhenInUseAuthorization()
        @unknown default:
            loactionManager.requestWhenInUseAuthorization()
        }
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        googleMap.camera = GMSCameraPosition(target: CLLocationCoordinate2D(latitude: manager.location?.coordinate.latitude ?? 0.0, longitude: manager.location?.coordinate.longitude ?? 0.0), zoom: 0, bearing: 0, viewingAngle: 0)
        let marker = GMSMarker()
        marker.position = CLLocationCoordinate2D(latitude: manager.location?.coordinate.latitude ?? 0.0, longitude: manager.location?.coordinate.longitude ?? 0.0)
        marker.title = "Heyy / Hi"
        marker.snippet = "Snipet"
        marker.map = googleMap
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    

}

