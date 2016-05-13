//
//  MenuViewController.swift
//  Arroud-me
//
//  Created by Floren HENRI on 5/13/16.
//  Copyright © 2016 Floren HENRI. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit


class MenuViewController: UIViewController {



    @IBOutlet var lblName: UILabel!
    @IBOutlet var ivUserProfileImage: UIImageView!
    @IBOutlet var Open: UIBarButtonItem!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
    let graphRequest = FBSDKGraphRequest (graphPath: "me", parameters: nil)
        graphRequest.startWithCompletionHandler{(connection, result, error)-> Void in
            FBSDKGraphRequest.init(graphPath: "me", parameters: ["fields":"first_name, last_name, picture.type(large)"]).startWithCompletionHandler { (connection, result, error) -> Void in
                            let strFirstName: String = (result.objectForKey("first_name") as? String)!
                          let strLastName: String = (result.objectForKey("last_name") as? String)!
                        let strPictureURL: String = (result.objectForKey("picture")?.objectForKey("data")?.objectForKey("url") as? String)!
                       self.lblName.text = "Welcome, \(strFirstName) \(strLastName)"
                      self.ivUserProfileImage.layer.masksToBounds = true
                    self.ivUserProfileImage.layer.cornerRadius = CGRectGetWidth(self.ivUserProfileImage.frame) / 2
             self.ivUserProfileImage.image = UIImage(data: NSData(contentsOfURL: NSURL(string: strPictureURL)!)!)

                   }
             }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}