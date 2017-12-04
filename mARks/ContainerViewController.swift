//
//  ContainerViewController.swift
//  mARks
//
//  Created by Ejaz Merchant on 12/4/17.
//  Copyright © 2017 Ejaz Merchant. All rights reserved.
//

import Foundation
import UIKit
import CoreLocation
import CoreMotion

class ContainerViewController: UIViewController {
    
    @IBOutlet var headingLabel: UILabel!
    @IBOutlet var countLabel: UILabel!
    @IBOutlet var refreshButton: CustomButton!
    
    var arView: ARViewController!
    var showsDebuggingLabels: Bool = false
    
    // Location
    fileprivate let locationManager = CLLocationManager()
    var requestedItems: Bool = false
    
    // Motion
    let debugHeading: Bool = false
    let mmgr = CMMotionManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let screenSize = UIScreen.main.bounds.size
        view.backgroundColor = .black
        
        headingLabel.isHidden = !debugHeading
        countLabel.isHidden = true
        refreshButton.type = .refreshButton
        
        //Add AR SubView
        arView = self.storyboard?.instantiateViewController(withIdentifier: "arView") as! ARViewController
        self.addChildViewController(arView)
        arView.view.frame = CGRect(x:0, y:0, width:screenSize.width, height:screenSize.height)
        self.view.insertSubview(arView.view, at: 0)
        arView.didMove(toParentViewController: self)
        addConstraintsFor(arView.view, width: screenSize.width, idPrefix: "ar")
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyNearestTenMeters

    }

}
