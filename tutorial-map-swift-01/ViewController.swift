//
//  ViewController.swift
//  tutorial-map-swift-01
//
//  Created by Akekapon Suebprom on 19/9/59.
//  Copyright © พ.ศ. 2559 kratostracking. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    @IBOutlet weak var map: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let latitude:CLLocationDegrees = 13.710826
        let lontitude:CLLocationDegrees = 100.498309
        let latDelta:CLLocationDegrees = 0.04
        let lonDelta:CLLocationDegrees = 0.04
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: latDelta, longitudeDelta: lonDelta)
        
        let location:CLLocationCoordinate2D = CLLocationCoordinate2D(latitude: latitude, longitude: lontitude)
        
        let regit:MKCoordinateRegion = MKCoordinateRegion(center: location, span: span)
        map.setRegion(regit, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

