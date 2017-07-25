//
//  CollectionOfPrayers.swift
//  Prayer Request App
//
//  Created by Emilee Duquette on 6/16/17.
//  Copyright © 2017 Ryan Petrill. All rights reserved.
//

import UIKit

class CollectionOfPrayers {
    
    var allPrayers = [Prayer]()
    
    @discardableResult func createPrayer() -> Prayer {
        let newPrayer = Prayer(random: true)
        allPrayers.append(newPrayer)
        return newPrayer
    }
    
    init() {
        for _ in 0..<5 {
            createPrayer()
        }
    }
}
