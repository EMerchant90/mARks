//
//  DroppablePin.swift
//  mARks
//
//  Created by Ejaz Merchant on 12/6/17.
//  Copyright © 2017 Ejaz Merchant. All rights reserved.
//

import UIKit
import MapKit

class DroppablePin: NSObject, MKAnnotation {
    dynamic var coordinate: CLLocationCoordinate2D
    var identifier: String
    
    init(coordinate: CLLocationCoordinate2D, identifier: String) {
        self.coordinate = coordinate
        self.identifier = identifier
        super.init()
    }
}
