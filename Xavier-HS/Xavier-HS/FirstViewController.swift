//
//  FirstViewController.swift
//  Xavier HS
//
//  Created by Eric Li on 8/28/19.
//  Copyright © 2019 Cornette. All rights reserved.
//

import UIKit
import WebKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var WeekDay: UILabel!
    @IBOutlet weak var Month: UILabel!
    @IBOutlet weak var Day: UILabel!
    @IBOutlet weak var Year: UILabel!
    
    @IBOutlet weak var Lunch: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        let date = Date()
        let calendar = Calendar.current
        
//Getting and Printing the WeekDay Value
        let weekday = calendar.component(.weekday, from: date)

        var weekDay: String
        
        if (weekday == 1)
        {
            weekDay = "Sunday,"
        }
          else if (weekday == 2)
        {
            weekDay = "Monday,"
        } else if (weekday == 3)
        {
            weekDay = "Tuesday,"
        } else if (weekday == 4)
        {
            weekDay = "Wednesday,"
        } else if (weekday == 5)
        {
            weekDay = "Thursday,"
        } else if (weekday == 6)
        {
            weekDay = "Friday,"
        } else
        {
            weekDay = "Saturday,"
        }
        
        WeekDay.text = weekDay

//Getting and Printing the Month Value
        let month = calendar.component(.month, from: date)
        
        var monthWord: String
        
        if (month == 1)
        {
            monthWord = "January,"
        } else if (month == 2)
        {
            monthWord = "February,"
        }else if (month == 3)
        {
            monthWord = "March,"
        }else if (month == 4)
        {
            monthWord = "April,"
        }else if (month == 5)
        {
            monthWord = "May,"
        }else if (month == 6)
        {
            monthWord = "June,"
        }else if (month == 7)
        {
            monthWord = "July,"
        }else if (month == 8)
        {
            monthWord = "August,"
        }else if (month == 9)
        {
            monthWord = "September,"
        }else if (month == 10)
        {
            monthWord = "October,"
        }else if (month == 11)
        {
            monthWord = "November,"
        }else
        {
            monthWord = "December,"
        }
        
        Month.text = monthWord
        
//Getting and Printing the Day and Year Values
        let day = calendar.component(.day, from: date)
        let year = calendar.component(.year, from: date)
        
        Day.text = String(day) + "," + " " + String(year)

//Web Scraping For Lunch UITextView
//        let webView = WKWebView()
//
//        let url = URL(string: "")!
//        let request = URLRequest(url: url)
//        
    }


}


