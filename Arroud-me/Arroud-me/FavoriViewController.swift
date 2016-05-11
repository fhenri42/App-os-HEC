//
//  FavoriViewController.swift
//  Arroud-me
//
//  Created by Floren HENRI on 5/11/16.
//  Copyright © 2016 Floren HENRI. All rights reserved.
//

import UIKit

class FavoriViewController: UIViewController,UITableViewDelegate, UITableViewDataSource
{

 
    @IBOutlet var tableView: UITableView!
    var delegateInfo : Info_eventViewController?
    
    var items: [String] = ["event1", "event2", "event3"]
    var logoImage: [UIImage] = [UIImage(named: "Card_like_1")!, UIImage(named: "Card_like_2")!, UIImage(named: "Card_like_3")!]

    override func viewDidLoad()
    {
        super.viewDidLoad()
        self.tableView.registerClass(UITableViewCell.self, forCellReuseIdentifier: "cell")
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count;
    }
   
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell:UITableViewCell = self.tableView.dequeueReusableCellWithIdentifier("cell")! as UITableViewCell
        
        cell.textLabel?.text = self.items[indexPath.row]
        cell.imageView!.image = self.logoImage[indexPath.row]
        return cell
    }
  
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //self.tableView!. = 0;
        self.delegateInfo?.test(indexPath.row)
       // self.tableView!.selectedIndex = 0
       print("You selected cell #\(indexPath.row)!")
   }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}


