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
    var x = 1
    override func viewDidLoad()
    {
        let img = UIImage(named: "imgres-1.jpg")
        Myimage.image = img
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func next_func(sender: AnyObject)
  
    {
     
    }
   
    @IBAction func like_func(sender: AnyObject)
    {

        let img = UIImage(named: "imgres-1.jpg")
        let img1 = UIImage(named: "imgres-2.jpg")
        let img2 = UIImage(named: "imgres-3.jpg")
        let img3 = UIImage(named: "imgres-4.jpg")
        print("tu bug ou l'ami")
       
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
        x += 1;
        if (x == 4)
        {
            x = 0
            Myimage.image = img3
            eventTitle.text = "event04"
            eventInfo.text = "blabalbalbal04"
            
        }
        print("%d",x)
        print("we press the button")
    }
    
    @IBAction func dislike_func(sender: AnyObject)
    {
    
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

