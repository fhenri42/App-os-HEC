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
private var numberOfCards: UInt = 6

class ViewController: UIViewController
{

    
 
//    @IBOutlet var Open: UIBarButtonItem!

    @IBOutlet var kolodaView: KolodaView!
/* FBSDKLoginButtonDelegate */
    
    
    
    
    
    @IBOutlet var Open: UIBarButtonItem!
    @IBOutlet var Favoris: UIButton!
    @IBOutlet var Like: UIButton!
    @IBOutlet var Dislike: UIButton!
    @IBOutlet var Go: UIButton!
    
    
    
    
    
    
    
   
   // @IBOutlet var Image: UIView!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        Open.target = self.revealViewController()
        Open.action = #selector(SWRevealViewController.revealToggle(_:))
        
        kolodaView.dataSource = self
        kolodaView.delegate = self
        self.modalTransitionStyle = UIModalTransitionStyle.FlipHorizontal
    }
    func Image(img: AnyObject)
    {
        print("test")
    }
    
   /* override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?)
    {
                //     let Dest : Favori = segue.destinationViewController as! Favori
              //  Dest.labelText = eventTitle.text!
            print("don't push")
        
    } */
    
    @IBAction func Likefunc(sender: AnyObject)
    {
            kolodaView?.swipe(SwipeResultDirection.Right)
    }

   
    @IBAction func DislikeFunc(sender: AnyObject)
    {
        kolodaView?.swipe(SwipeResultDirection.Left)
    }
  
    
    private var dataSource: Array<UIImage> = {
        var array: Array<UIImage> = []
        
        for index in 0..<numberOfCards {
            array.append(UIImage(named: "Card_like_\(index + 1)")!)

        }
        
        return array
    }()
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

//MARK: KolodaViewDelegate
extension ViewController: KolodaViewDelegate {
    
    func kolodaDidRunOutOfCards(koloda: KolodaView) {
        
        dataSource.insert(UIImage(named: "Card_like_1")!, atIndex: kolodaView.currentCardIndex - 1)
        let position = kolodaView.currentCardIndex
        kolodaView.insertCardAtIndexRange(position...position, animated: true)
    }
    func koloda(koloda: KolodaView, didSelectCardAtIndex index: UInt)
    {
        
        
        //let imageView = Image
        //let tapGestureRecognizer = UITapGestureRecognizer(target:self, action:Selector("imageTapped:"))
        //imageView.userInteractionEnabled = true
        //imageView.addGestureRecognizer(tapGestureRecognizer)
        
        
      /*
        
        let storyboard = UIStoryboard(name: "Main", bundle: nil);
        let viewName:NSString = "websiteView"
        let vc = storyboard.instantiateViewControllerWithIdentifier(viewName as String) as! Info_eventViewController
        self.showViewController(vc, sender: self)
        print("test")
       */
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