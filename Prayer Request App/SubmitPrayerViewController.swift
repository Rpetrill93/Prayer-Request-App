//
//  ViewController.swift
//  Prayer Request App
//
//  Created by Emilee Duquette on 5/4/17.
//  Copyright © 2017 Ryan Petrill. All rights reserved.
//

import UIKit

class SubmitPrayerViewController: UIViewController, UITextViewDelegate {

    
    
    @IBOutlet var quoteLabel: UILabel!
    @IBOutlet var prayerTextView: UITextView!
    
    @IBAction func submitPrayer(_ sender: Any) {
        return
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        prayerTextView.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
        prayerTextView.text = "Enter your Prayer"
        prayerTextView.textColor =  UIColor.lightGray
    }
    
        func textViewDidBeginEditing(_ textView: UITextView) {
            print("Text View is Editing")
                textView.text = nil
                textView.textColor = .black
        }
        func textViewDidEndEditing(_ textView: UITextView) {
                textView.textColor = UIColor.lightGray
    }

    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
 
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}



