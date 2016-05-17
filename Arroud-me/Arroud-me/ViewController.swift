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

var logoImages: [UIImage] = []


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
    
    @IBOutlet weak var test: UINavigationItem!
    
    var idx : Int = 0
    
    
    
    
   
   // @IBOutlet var Image: UIView!
    override func viewDidLoad()
    {
        y = 0
        super.viewDidLoad()
        logoImages.append(UIImage(named: "Artsy Hour")!)
        logoImages.append(UIImage(named: "Du dimanche")!)
        logoImages.append(UIImage(named: "Burger")!)
        logoImages.append(UIImage(named: "Nuit debout")!)
        logoImages.append(UIImage(named: "Disco slade")!)
        logoImages.append(UIImage(named: "Nova")!)
        logoImages.append(UIImage(named: "Paris festival")!)
        
        
        Open.target = self.revealViewController()
        Open.action = #selector(SWRevealViewController.revealToggle(_:))
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Back")!)
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
        y += 1
        kolodaView?.swipe(SwipeResultDirection.Right)
    }

   
    @IBAction func DislikeFunc(sender: AnyObject)
    {
        y += 1
        kolodaView?.swipe(SwipeResultDirection.Left)
    }
  
    @IBAction func Go_func(sender: AnyObject)
    {
        performSegueWithIdentifier("Henri", sender: self.idx)
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "showInfoSegue" {
            if let tvc = segue.destinationViewController as? TestViewController {
                w = 0
                tvc.new = logoImages[sender as! Int]
            }
        }
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
        y = Int(index)
        performSegueWithIdentifier("showInfoSegue", sender: index)
    }
}

//MARK: KolodaViewDataSource
extension ViewController: KolodaViewDataSource {
    
    func kolodaNumberOfCards(koloda:KolodaView) -> UInt {
    
        return UInt(dataSource.count)
    }
    
    func koloda(koloda: KolodaView, viewForCardAtIndex index: UInt) -> UIView {
        self.idx = Int(index)
        print(self.idx)
        return UIImageView(image: dataSource[Int(index)])
    }
    
    func koloda(koloda: KolodaView, viewForCardOverlayAtIndex index: UInt) -> OverlayView? {
        return NSBundle.mainBundle().loadNibNamed("OverlayView",
                                                  owner: self, options: nil)[0] as? OverlayView
    }
}