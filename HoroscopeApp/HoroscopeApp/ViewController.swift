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
    var month: String?
    var day: Int?
    var sign: String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func giveHoroscope(sender: AnyObject) {
        if((monthIn.text!) != "") && ((dayIn.text!) != "") {
            month = (monthIn.text)?.lowercaseString
            day = Int(dayIn.text!)
            msg.text = "Yay \(month!) \(day!)"
            
            // assign the zodiac sign
            assignZodiac(month!, day: day!)
            
            // give horoscope based on sign 
            if(sign == "Aries") {
                msg.text = "Aries (March 21-April 19). For the position you’re in, many are called, but few are chosen. If you make it through, consider yourself both lucky and worthy. Then remember, you still have a choice in what you do going forward."
            } else if(sign == "Taurus"){
                msg.text = "Taurus (April 20-May 20). A good social balance isn’t something to take lightly. It doesn’t happen every day. When you’re doing great on your own, consider very carefully whether or not you should really add another person to the mix."
            } else if(sign == "Gemini") {
                msg.text = "Gemini (May 21-June 21). Do you have the heart for it? That’s the question that will arise. The way to check your heart compatibility is pretty simple. Ask your heart: Do I really want this, and, if so, how badly?"
            } else if(sign == "Cancer") {
                msg.text = "Cancer (June 22-July 22). Meddling and losing are along the same line. If you meddle, you’ll lose. Keep to your own business. Remain fixed on the prize that is yours and only yours."
            } else if(sign == "Leo") {
                msg.text = "Leo (July 23-Aug. 22). Your creativity knows no bounds. However, the world has boundaries, and they quickly will be imposed if you’re not careful to separate yourself into an area where the usual rules don’t apply."
            } else if(sign == "Virgo") {
                msg.text = "Virgo (Aug. 23-Sept. 22). It might be difficult to tell whether a person is making your life better or worse. Either way, rest assured that your skills are growing for having to interact in a certain way."
            } else if(sign == "Libra") {
                msg.text = "Libra (Sept. 23-Oct. 23). This morning you’ll open your eyes with a fresh perspective on life. Then you’ll figure out what really makes you happy and prioritize your life based on that realization. It’s a truly great day."
            } else if(sign == "Scorpio") {
                msg.text = "Scorpio (Oct. 24-Nov. 21). Oddly enough, the happy endings don’t always come at the end. Someone will save you when you’re right smack in the middle of a perilous task. You’re no victim, but once in a while it’s nice to be saved."
            } else if(sign == "Saggitarius") {
                msg.text = "Sagittarius (Nov. 22-Dec. 21). You need a big challenge. This is what gives your valor a chance to emerge. You’ll see the obstacle almost as soon as you get to work. This needs conquering, and the conqueror is you."
            } else if(sign == "Capricorn") {
                msg.text = "Capricorn (Dec. 22-Jan. 19). As you rise to great heights, you wonder whether it will last. You’ve seen this before. Yes, there will be a point at which things start sliding the opposite direction. Worry about it when you get there. For now, enjoy your climb."
            } else if(sign == "Aquarius") {
                msg.text = "Aquarius (Jan. 20-Feb. 18). You’re inclined to play by the rules, but you’ll also play seriously — ruthlessly — for keeps. Your competitors don’t have a chance against you. Utilize your team. They really want to help."
            } else if(sign == "Pisces") {
                msg.text = "Pisces (Feb. 19-March 20). You could coast on what you already know, but that’s not your style. Instead, you choose to keep your skills up to date. Those above you will be pleased at the initiative you show."
            }
            
        } else {
            msg.text = "You forgot to enter your birth date! - Try again."
        }
    }
    
    // This function assigns the Zodiac Sign according to the given birthdate
    func assignZodiac(month:String, day:Int)->String{
        if(month == "january") {
            if(day >= 1 && day < 20) {
                sign = "Capricorn"
            } else if(day >= 20 && day <= 31) {
                sign = "Aquarius"
            }
        } else if(month == "february") {
            if(day >= 1 && day < 19) {
                sign = "Aquarius"
            } else if(day >= 19 && day <= 28) {
                sign = "Pisces"
            }
        } else if(month == "march") {
            if(day >= 1 && day < 21) {
                sign = "Pisces"
            } else if(day >= 21 && day <= 31) {
                sign = "Aries"
            }
        } else if(month == "april") {
            if(day >= 1 && day < 20) {
                sign = "Aries"
            } else if(day >= 20 && day <= 31) {
                sign = "Taurus"
            }
        } else if(month == "may") {
            if(day >= 1 && day < 21) {
                sign = "Taurus"
            } else if(day >= 21 && day <= 31) {
                sign = "Gemini"
            }
        } else if(month == "june") {
            if(day >= 1 && day < 22) {
                sign = "Gemini"
            } else if(day >= 22 && day <= 30) {
                sign = "Cancer"
            }
        } else if(month == "july") {
            if(day >= 1 && day < 23) {
                sign = "Cancer"
            } else if(day >= 23 && day <= 31) {
                sign = "Leo"
            }
        } else if(month == "august") {
            if(day >= 1 && day < 23) {
                sign = "Leo"
            } else if(day >= 23 && day <= 31) {
                sign = "Virgo"
            }
        } else if(month == "september") {
            if(day >= 1 && day < 23) {
                sign = "Virgo"
            } else if(day >= 23 && day <= 30) {
                sign = "Libra"
            }
        } else if(month == "october") {
            if(day >= 1 && day < 24) {
                sign = "Libra"
            } else if(day >= 24 && day <= 31) {
                sign = "Scorpio"
            }
        } else if(month == "november") {
            if(day >= 1 && day < 22) {
                sign = "Scorpio"
            } else if(day >= 22 && day < 30) {
                sign = "Saggitarius"
            }
        } else if(month == "december") {
            if(day >= 1 && day < 22) {
                sign = "Saggitarius"
            } else if(day >= 22 && day <= 31) {
                sign = "Capricorn"
            }
        } else {
            msg.text = "You don't know your birthday"
        }
        return sign
    }

}


