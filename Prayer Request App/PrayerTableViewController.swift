//
//  PrayerTableViewController.swift
//  Prayer Request App
//
//  Created by Emilee Duquette on 6/16/17.
//  Copyright © 2017 Ryan Petrill. All rights reserved.
//

import UIKit

class PrayerTableViewController: UITableViewController  {
    
    var collectionOfPrayers = CollectionOfPrayers()
    
    //Set Insets so it doesn't overlap the Top Bar
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Get status bar height
        let statusBarHeight = UIApplication.shared.statusBarFrame.height
        
        let insets = UIEdgeInsets(top: statusBarHeight, left: 0, bottom: 0, right: 0)
        tableView.contentInset = insets
        tableView.scrollIndicatorInsets = insets
    }
    
    //Set the number of rows based on the number of prayers
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return collectionOfPrayers.allPrayers.count
    }
    
    //Populate the Cells
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //Get a new or recycled cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "UITableViewCell", for: indexPath)
        
        //Set the text in the cell
        let prayer = collectionOfPrayers.allPrayers[indexPath.row]
        cell.textLabel?.text = prayer.prayer
        return cell
    }
    
    //Pass the Prayer Data to the Prayer Detail View
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        switch segue.identifier {
        case "showPrayerDetail"?:
            //Figure out the row that was tapped in the table
            if let row = tableView.indexPathForSelectedRow?.row {
                //Get the prayer associated with that row
                let prayer = collectionOfPrayers.allPrayers[row]
                let prayerDetailViewController = segue.destination as! PrayerDetailViewController
                prayerDetailViewController.prayer = prayer
            }
        default:
            preconditionFailure("Unexpected Segue Identifier")
        }
    }
    
}
