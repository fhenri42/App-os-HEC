//
//  Info-eventViewController.swift
//  Arroud-me
//
//  Created by Floren HENRI on 5/11/16.
//  Copyright © 2016 Floren HENRI. All rights reserved.
//

import UIKit
import MapKit

class Info_eventViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate
{
    @IBOutlet var My_map: MKMapView!

    @IBOutlet var Geoloc: UIButton!
    
    var locationManager = CLLocationManager()
    override func viewDidLoad() {
        
        
        
        super.viewDidLoad()
        My_map.delegate = self
        My_map.showsUserLocation = true
        My_map.mapType = MKMapType.Hybrid
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
       
        // Do any additional setup after loading the view.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Geoloc_func(sender: AnyObject)
    {
      //  var userLocation = MKUserLocation()
        let latDelta = 0.01
        let longDelta = 0.01
        let currentLatitude = 48.7578905
        let currentLongitude =  2.1672223
        
        
        let currentLocationSpan: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        let currentLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(currentLatitude, currentLongitude)
        let currentRegion: MKCoordinateRegion = MKCoordinateRegionMake(currentLocation, currentLocationSpan)
        self.My_map.setRegion(currentRegion, animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
