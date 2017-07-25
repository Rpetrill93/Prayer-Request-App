//
//  PrayerDetailViewController.swift
//  Prayer Request App
//
//  Created by Emilee Duquette on 6/16/17.
//  Copyright © 2017 Ryan Petrill. All rights reserved.
//

import UIKit

class PrayerDetailViewController: UIViewController {
    
    @IBOutlet var prayerDetailLabel: UILabel!
    @IBOutlet var prayerCountDetail: UILabel!
    var prayer: Prayer!
    
    //Load in the prayer to the Prayer Details
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        prayerDetailLabel.text = prayer.prayer
        prayerCountDetail.text = "Prayed for by \(prayer.prayerCount!) People"
        
    }
    
}
