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

    @IBOutlet var ivUserProfileImage: UIImageView!
    @IBOutlet var loginButton: FBSDKLoginButton!
    @IBOutlet var lblName: UILabel!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        loginButton.readPermissions = ["email"]
        self.view.addSubview(loginButton)
        loginButton.delegate = self
    
        
        // Do any additional setup after loading the view.
    }
    
    func loginButton(loginButton: FBSDKLoginButton!, didCompleteWithResult result: FBSDKLoginManagerLoginResult!, error: NSError!)
    {
        let graphRequest = FBSDKGraphRequest (graphPath: "me", parameters: nil)
        graphRequest.startWithCompletionHandler{(connection, result, error)-> Void in
            
         
                FBSDKGraphRequest.init(graphPath: "me", parameters: ["fields":"first_name, last_name, picture.type(large)"]).startWithCompletionHandler { (connection, result, error) -> Void in
                    let strFirstName: String = (result.objectForKey("first_name") as? String)!
                    let strLastName: String = (result.objectForKey("last_name") as? String)!
                    let strPictureURL: String = (result.objectForKey("picture")?.objectForKey("data")?.objectForKey("url") as? String)!
                    self.lblName.text = "Welcome, \(strFirstName) \(strLastName)"
                    self.ivUserProfileImage.layer.masksToBounds = true
                    self.ivUserProfileImage.layer.cornerRadius = CGRectGetWidth(self.ivUserProfileImage.frame) / 4
                    self.ivUserProfileImage.image = UIImage(data: NSData(contentsOfURL: NSURL(string: strPictureURL)!)!)
                   
                    }
            

            
        }
        print("logged in")
    }
    func loginButtonDidLogOut(loginButton: FBSDKLoginButton!)
    {
        print("logg out")
    }
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
