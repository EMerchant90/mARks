//
//  MapViewController.swift
//  mARks
//
//  Created by Ejaz Merchant on 11/29/17.
//  Copyright © 2017 Ejaz Merchant. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class MapViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var mapView: MKMapView!
    var locationManager = CLLocationManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations[0]
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        mapView.setRegion(region, animated: true)
        self.mapView.showsUserLocation = true
        locationManager.stopUpdatingLocation()
    }
    
    
    @IBAction func dropPinCurrentLocation(_ sender: UIButton) {
        
        mapView.delegate = self
        locationManager.startUpdatingLocation()
        
    }
    
    
    
    
}
