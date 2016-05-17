//
//  Info-eventViewController.swift
//  Arroud-me
//
//  Created by Floren HENRI on 5/11/16.
//  Copyright © 2016 Floren HENRI. All rights reserved.
//

import UIKit
import MapKit

var w = 0

class ColorPointAnnotation: MKPointAnnotation {
    var pinColor: UIColor
    
    init(pinColor: UIColor) {
        self.pinColor = pinColor
        super.init()
    }
}

class Info_eventViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate
{
    @IBOutlet var My_map: MKMapView!
    @IBOutlet weak var My_seg: UISegmentedControl!
    @IBOutlet weak var My_image: UIButton!
    
    @IBOutlet var test: UINavigationItem!

    var locationManager = CLLocationManager()
    override func viewDidLoad() {
    
        w = 5
        self.My_seg.layer.cornerRadius = 5
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 45, height: 45))
        imageView.contentMode = .ScaleAspectFit
        let logo = UIImage(named: "background")
        imageView.image = logo
        self.test.titleView = imageView
       
        
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Back")!)
        super.viewDidLoad()
        My_map.delegate = self
        My_map.showsUserLocation = true
        My_map.mapType = MKMapType.Standard
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        let new = logoImages[y]
        My_image.setImage(new, forState: UIControlState.Normal)
        
        let latDelta = 0.01
        let longDelta = 0.01
        let currentLatitude = 48.7578905
        let currentLongitude =  2.1672223
        
        
        let currentLocationSpan: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        let currentLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(currentLatitude, currentLongitude)
        let currentRegion: MKCoordinateRegion = MKCoordinateRegionMake(currentLocation, currentLocationSpan)
        self.My_map.setRegion(currentRegion, animated: true)
        
    
        
        
        locationManager.requestAlwaysAuthorization()
       
        // Do any additional setup after loading the view.
    }

    @IBAction func My_geo(sender: AnyObject)
    {
        let latDelta = 0.01
        let longDelta = 0.01
        let currentLatitude = 48.7578905
        let currentLongitude = 2.1672223
        
        let dropPin = ColorPointAnnotation(pinColor: UIColor.blueColor())
        dropPin.coordinate = CLLocationCoordinate2DMake(48.7578905, 2.1672223)
        dropPin.title = "Your Potision"
        My_map.addAnnotation(dropPin)
        
        let currentLocationSpan: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        let currentLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(currentLatitude, currentLongitude)
        let currentRegion: MKCoordinateRegion = MKCoordinateRegionMake(currentLocation, currentLocationSpan)
        self.My_map.setRegion(currentRegion, animated: true)
        locationManager.requestAlwaysAuthorization()
        
    }
    @IBAction func where_func(sender: AnyObject)
    {
        let latDelta = 0.01
        let longDelta = 0.01
        let currentLatitude = 48.86188
        let currentLongitude = 2.3435905
        
        let dropPin = ColorPointAnnotation(pinColor: UIColor.blueColor())
        dropPin.coordinate = CLLocationCoordinate2DMake(48.86188, 2.3435905)
        dropPin.title = "Event"
        My_map.addAnnotation(dropPin)
        
        let currentLocationSpan: MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        let currentLocation: CLLocationCoordinate2D = CLLocationCoordinate2DMake(currentLatitude, currentLongitude)
        let currentRegion: MKCoordinateRegion = MKCoordinateRegionMake(currentLocation, currentLocationSpan)
        self.My_map.setRegion(currentRegion, animated: true)
        locationManager.requestAlwaysAuthorization()
        
    }
    @IBAction func My_switch(sender: UISegmentedControl)
    {
            switch My_seg.selectedSegmentIndex
            {
            case 0:
                My_map.mapType = MKMapType.Standard
            case 1:
                My_map.mapType = MKMapType.Hybrid
            case 2:
                My_map.mapType = MKMapType.Satellite
            default :
                break
            }
    }
    @IBAction func first_friend(sender: AnyObject)
    {
        let f01 = CLLocationCoordinate2DMake(48.7575846, 2.1719993)
        let dropPin = MKPointAnnotation()
        dropPin.coordinate = f01
        dropPin.title = "Francoise"
        dropPin.subtitle = "1 km from you"
        My_map.addAnnotation(dropPin)
    }
    
    @IBAction func seconf_friends(sender: AnyObject)
    {
        let f01 = CLLocationCoordinate2DMake(48.7618107,2.1659884)
        let dropPin = MKPointAnnotation()
        dropPin.coordinate = f01
        dropPin.title = "Maja"
        dropPin.subtitle = "3 km from you"
        My_map.addAnnotation(dropPin)
        
    }
    @IBAction func thread_firend(sender: AnyObject)
    {
        let f01 = CLLocationCoordinate2DMake(48.7505392,2.1673758)
        let dropPin = MKPointAnnotation()
        dropPin.coordinate = f01
        dropPin.title = "Charles"
        dropPin.subtitle = "7 km from you"
        My_map.addAnnotation(dropPin)
    }
    @IBAction func _friend(sender: AnyObject)
    {
        let f01 = CLLocationCoordinate2DMake(48.802623,2.1046301)
        let dropPin = MKPointAnnotation()
        dropPin.coordinate = f01
        dropPin.title = "Marc"
        dropPin.subtitle = "12 km from you"
        My_map.addAnnotation(dropPin)
        
    }

    @IBAction func cinquimme_friend(sender: AnyObject)
    {
        let f01 = CLLocationCoordinate2DMake(48.861893,2.344806)
        let dropPin = MKPointAnnotation()
        dropPin.coordinate = f01
        dropPin.title = "Michelle"
        dropPin.subtitle = "21 km from you"
        My_map.addAnnotation(dropPin)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
