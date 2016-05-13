//
//  SlideMenuViewController.swift
//  Arroud-me
//
//  Created by Floren HENRI on 5/13/16.
//  Copyright © 2016 Floren HENRI. All rights reserved.
//

import UIKit


class SlideMenuViewController: UIViewController
{
    @IBOutlet var Open: UIBarButtonItem!
    override func viewDidLoad() {
        
        open.target = self.revealViewController()
    }
    
}


