//
//  LoginControleur.swift
//  Arroud-me
//
//  Created by Floren HENRI on 5/5/16.
//  Copyright © 2016 Floren HENRI. All rights reserved.
//

import UIKit
import FBSDKCoreKit
import FBSDKLoginKit

class LoginControleur: UIViewController, FBSDKLoginButtonDelegate
{

   // @IBOutlet var ivUserProfileImage: UIImageView!
    
    

    @IBOutlet var loginButton: FBSDKLoginButton!
 //   @IBOutlet var lblName: UILabel!
 //   @IBOutlet var info: UILabel!
    
    var loggedIn : Bool = false
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        loginButton.readPermissions = ["email"]
        self.view.addSubview(loginButton)
        loginButton.delegate = self
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: "Back")!)
    }
  
    override func viewDidAppear(animated: Bool)
    {
        if (loggedIn)
        {
            performSegueWithIdentifier("loggedInSegue", sender: nil)
        }
    }
   
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!)
    {
        if (result.isCancelled)
        {
            self.loggedIn = false
        }
        else
        {
            self.loggedIn = true
        }
        print("logged in")
    }
    
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!)
    {
        print("logg out")
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
