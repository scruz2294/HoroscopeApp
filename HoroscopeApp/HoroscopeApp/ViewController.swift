//
//  ViewController.swift
//  HoroscopeApp
//
//  Created by Stephanie Cruz on 8/31/15.
//  Copyright © 2015 Stephanie Cruz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var msg: UILabel!
    @IBOutlet weak var monthIn: UITextField!
    @IBOutlet weak var dayIn: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func giveHoroscope(sender: AnyObject) {
        var month: String?
        month = monthIn.text
        if(month != "") {
            msg.text = "Yayyyy"
        }
        else {
            msg.text = "You forgot to enter your birth date! - Try again."
        }
    }
    

}

