//
//  ViewController.swift
//  Arroud-me
//
//  Created by Floren HENRI on 5/1/16.
//  Copyright © 2016 Floren HENRI. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var Like: UIButton!
    @IBOutlet var Next: UIButton!
    @IBOutlet var Dislike: UIButton!

    @IBOutlet var image: UIImageView!
    
    var x = 0
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    @IBAction func next_func(sender: AnyObject)
    {
     
    }
   
    @IBAction func like_func(sender: AnyObject)
    {

        let img0 = UIImage(named: "imgres1.jpg")
        let img1 = UIImage(named: "imgres2.jpg")
        let img2 = UIImage(named: "imgres3.jpg")
        print("tu bug ou l'ami")
        if (x == 0)
        {
            image.image=UIImage(named: "imgres1.jpg")
        }
        if (x == 1)
        {
            image.image=UIImage(named: "imgres2.jpg")
        }
        x += 1;
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

