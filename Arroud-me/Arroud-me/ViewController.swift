//
//  ViewController.swift
//  Arroud-me
//
//  Created by Floren HENRI on 5/1/16.
//  Copyright © 2016 Floren HENRI. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit
import Koloda

var y = 0
private var numberOfCards: UInt = 5

class ViewController: UIViewController{

    @IBOutlet var kolodaView: KolodaView!
    
    private var dataSource: Array<UIImage> = {
        var array: Array<UIImage> = []
        for index in 0..<numberOfCards {
            array.append(UIImage(named: "Card_like_\(index + 1)")!)
        }
        
        return array
    }()


/* FBSDKLoginButtonDelegate */
    
    @IBOutlet var TextField: UITextField!
    @IBOutlet var eventTitle: UILabel!
    @IBOutlet var eventInfo: UILabel!
    @IBOutlet var Like: UIButton!
    @IBOutlet var Next: UIButton!
    @IBOutlet var Dislike: UIButton!
    @IBOutlet weak var Goback: UIButton!
    var x = 1
    var go = false
    override func viewDidLoad()
    {
        super.viewDidLoad()
        eventTitle.text = "event01"
        eventInfo.text = "blabalbalbal01"
        
        kolodaView.dataSource = self
        kolodaView.delegate = self
        
        self.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
    }
  
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
        if (go == true)
        {
            if (x == 0)
            {
                
                eventTitle.text = "event01"
                eventInfo.text = "blabalbalbal01"
            }
            if (x == 1)
            {
               
                eventTitle.text = "event02"
                eventInfo.text = "blabalbalbal02"
                
            }
            if ( x == 2)
            {
                
                eventTitle.text = "event03"
                eventInfo.text = "blabalbalbal03"
            }
            if (x == 3)
            {
                
                eventTitle.text = "event04"
                eventInfo.text = "blabalbalbal04"
                
            }
            if (x == 4)
            {
                
                eventTitle.text = "event05"
                eventInfo.text = "blabalbalbal05"
                
            }
            if (x == 5)
            {
                eventTitle.text = "event06"
                eventInfo.text = "blabalbalbal06"
                
            }
            if (y == 0)
            {
                let Dest : Favori = segue.destinationViewController as! Favori
                Dest.labelText = eventTitle.text!

            }
            
        }
        else
        {
            print("don't push")
        }
        
    }
    
    func doSomeTaskForButton()
    {

        
        if (x == 0)
        {
            eventTitle.text = "event01"
            eventInfo.text = "blabalbalbal01"
        }
        if (x == 1)
        {
            eventTitle.text = "event02"
            eventInfo.text = "blabalbalbal02"
            
        }
        if ( x == 2)
        {
            eventTitle.text = "event03"
            eventInfo.text = "blabalbalbal03"
        }
        if (x == 3)
        {
            eventTitle.text = "event04"
            eventInfo.text = "blabalbalbal04"
            
        }
        if (x == 4)
        {
            eventTitle.text = "event05"
            eventInfo.text = "blabalbalbal05"
            
        }
        if (x == 5)
        {
            x = -1
            eventTitle.text = "event06"
            eventInfo.text = "blabalbalbal06"
            
        }

    }
    @IBAction func next_func(sender: AnyObject)
    {
    }

    @IBAction func like_func(sender: AnyObject)
    {
        go = true
        doSomeTaskForButton()
        y+=1
        x+=1
        
        kolodaView?.swipe(SwipeResultDirection.Right)
    }
    
    @IBAction func dislike_func(sender: AnyObject)
    {
    
        go = false
        doSomeTaskForButton()
        x+=1
        
        kolodaView?.swipe(SwipeResultDirection.Left)
    }
    
    
    @IBAction func goback_func(sender: AnyObject)
    {
        if (x > 0)
        {
        x -= 1
        } 
        doSomeTaskForButton()
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//MARK: KolodaViewDelegate
extension ViewController: KolodaViewDelegate {
    
    func kolodaDidRunOutOfCards(koloda: KolodaView) {
        dataSource.insert(UIImage(named: "Card_like_6")!, atIndex: kolodaView.currentCardIndex - 1)
        let position = kolodaView.currentCardIndex
        kolodaView.insertCardAtIndexRange(position...position, animated: true)
    }
    
    func koloda(koloda: KolodaView, didSelectCardAtIndex index: UInt) {
        UIApplication.sharedApplication().openURL(NSURL(string: "http://yalantis.com/")!)
    }
}

//MARK: KolodaViewDataSource
extension ViewController: KolodaViewDataSource {
    
    func kolodaNumberOfCards(koloda:KolodaView) -> UInt {
        return UInt(dataSource.count)
    }
    
    func koloda(koloda: KolodaView, viewForCardAtIndex index: UInt) -> UIView {
        return UIImageView(image: dataSource[Int(index)])
    }
    
    func koloda(koloda: KolodaView, viewForCardOverlayAtIndex index: UInt) -> OverlayView? {
        return NSBundle.mainBundle().loadNibNamed("OverlayView",
                                                  owner: self, options: nil)[0] as? OverlayView
    }
}