//
//  Prayer.swift
//  Prayer Request App
//
//  Created by Emilee Duquette on 6/16/17.
//  Copyright © 2017 Ryan Petrill. All rights reserved.
//

import UIKit

class Prayer:NSObject {
    var prayer: String
    var prayerCount: Int?
    
    init(prayer: String) {
        self.prayer = prayer
        self.prayerCount = 0
        
        super.init()
    }
    //Create random prayers
    convenience init(random:Bool = false) {
        if random {
            let randomPrayers = ["Prayer 1", "Prayer 2", "Prayer 3"]
            var index = arc4random_uniform(UInt32(randomPrayers.count))
            let randomPrayer = randomPrayers[Int(index)]
            
            self.init(prayer: randomPrayer)
        } else {
            self.init(prayer:"")
        }
    }
}
