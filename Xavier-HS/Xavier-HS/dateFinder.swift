//
//  dateFinder.swift
//  Xavier-HS
//
//  Created by Thomas Ledwith on 12/7/19.
//  Copyright © 2019 Cornette. All rights reserved.
//

import Foundation


class dateFinder {

    func dateFinder() {
    }
   
    var monthWord: String = ""
    let date = Date()
    let calendar = Calendar.current
    lazy var month = calendar.component(.month, from: date)
    lazy var day = calendar.component(.day, from: date)
    // let year = calendar.component(.year, from: date)
    //Getting and Printing the WeekDay Value
    lazy var weekday = calendar.component(.weekday, from: date)

    var weekDay: String = ""
    func setString() {
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
            
    if (month == 1)
    {
        monthWord = "Jan."
    } else if (month == 2)
    {
        monthWord = "Feb."
    }else if (month == 3)
    {
        monthWord = "March"
    }else if (month == 4)
    {
        monthWord = "April"
    }else if (month == 5)
    {
        monthWord = "May,"
    }else if (month == 6)
    {
        monthWord = "June"
    }else if (month == 7)
    {
        monthWord = "July"
    }else if (month == 8)
    {
        monthWord = "Aug."
    }else if (month == 9)
    {
        monthWord = "Sept."
    }else if (month == 10)
    {
        monthWord = "Oct."
    }else if (month == 11)
    {
        monthWord = "Nov."
    }   else
    {
        monthWord = "Dec."
    }
     
    }
}

