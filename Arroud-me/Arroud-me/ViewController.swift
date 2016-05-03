//
//  ViewController.swift
//  Arroud-me
//
//  Created by Floren HENRI on 5/1/16.
//  Copyright © 2016 Floren HENRI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var eventTitle: UILabel!
    @IBOutlet weak var eventInfo: UILabel!
    @IBOutlet var Like: UIButton!
    @IBOutlet var Next: UIButton!
    @IBOutlet var Dislike: UIButton!
    @IBOutlet weak var Myimage: UIImageView!
    @IBOutlet weak var Goback: UIButton!
    var x = 1
    override func viewDidLoad()
    {
        let img = UIImage(named: "imgres-1.jpg")
        Myimage.image = img
        eventTitle.text = "event01"
        eventInfo.text = "blabalbalbal01"
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func doSomeTaskForButton()
    {
        let img = UIImage(named: "imgres-1.jpg")
        let img1 = UIImage(named: "imgres-2.jpg")
        let img2 = UIImage(named: "imgres-3.jpg")
        let img3 = UIImage(named: "imgres-4.jpg")
        let img4 = UIImage(named: "imgres-5.jpg")
        let img5 = UIImage(named: "imgres-6.jpg")
        
        if (x == 0)
        {
            Myimage.image = img
            eventTitle.text = "event01"
            eventInfo.text = "blabalbalbal01"
        }
        if (x == 1)
        {
            Myimage.image = img1
            eventTitle.text = "event02"
            eventInfo.text = "blabalbalbal02"
            
        }
        if ( x == 2)
        {
            Myimage.image = img2
            eventTitle.text = "event03"
            eventInfo.text = "blabalbalbal03"
        }
        if (x == 3)
        {
            Myimage.image = img3
            eventTitle.text = "event04"
            eventInfo.text = "blabalbalbal04"
            
        }
        if (x == 4)
        {
            Myimage.image = img4
            eventTitle.text = "event05"
            eventInfo.text = "blabalbalbal05"
            
        }
        if (x == 5)
        {
            x = -1
            Myimage.image = img5
            eventTitle.text = "event06"
            eventInfo.text = "blabalbalbal06"
            
        }

    }
    @IBAction func next_func(sender: AnyObject)
  
    {
     
    }
   
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        if (segue.identifier == "segueTest") {
 //           var svc = segue!.destinationViewController as secondViewController
            
//            svc.toPass = textField.text
            
        }
    }
    @IBAction func like_func(sender: AnyObject)
    {
        
        doSomeTaskForButton()
        x+=1
    }
    
    @IBAction func dislike_func(sender: AnyObject)
    {
    
        doSomeTaskForButton()
        x+=1
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

