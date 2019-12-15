//
//  FirstViewController.swift
//  Xavier HS
//
//  Created by Eric Li on 8/28/19.
//  Copyright © 2019 Cornette. All rights reserved.
//

import UIKit
import WebKit
import SwiftSoup


class FirstViewController: UIViewController, WKNavigationDelegate {
    
    @IBOutlet weak var WeekDay: UILabel!
    @IBOutlet weak var Month: UILabel!
    @IBOutlet weak var Day: UILabel!
    @IBOutlet weak var Year: UILabel!
    
    @IBOutlet weak var warnBox: UIButton!
    @IBOutlet weak var warnTxt2: UITextView!
    @IBOutlet weak var warnTxt1: UITextView!
    @IBOutlet weak var Lunch: UITextView!
    @IBOutlet weak var Event1: UITextView!
    @IBOutlet weak var Event2: UITextView!
    @IBOutlet weak var Event3: UITextView!
    @IBOutlet weak var barcodeImageTest: UIImageView!
    ;
    
    
    let name = UserDefaults.standard.object(forKey: "firstName")
    
    let dateFinderC = dateFinder()
    let webScraper = webScrape(source: "http://www.xavierhs.org/s/81/rd16/start.aspx")
    let webScraper2 = webScrape(source: "http://www.xavierhs.org/s/81/rd16/index.aspx?sid=81&gid=1&pgid=1511")
    
   // let lunchCheck = webScrape(source: "https://xaviernyc.flikisdining.com/menu/xavier-high-school/lunch/2020-01-14")
    override func viewDidLoad() {
        super.viewDidLoad()
        webScraper.parseAndExecute()
        webScraper2.parseAndExecuteDay()
        //lunchCheck.showHTML()
        let nameCheck = webScrape(source: "http://www.xavierhs.org/s/81/rd16/index.aspx?sid=81&gid=1&pgid=1511", name1: name as? String ?? "")
        nameCheck.nameCheck()
        dateFinderC.setString()
        WeekDay.text = dateFinderC.weekDay
        Month.text = dateFinderC.monthWord
        Day.text = String(dateFinderC.day) + "," + " "
        Event1.text = webScraper.getOne()
        Event2.text = webScraper.getTwo()
        Event3.text = webScraper.getThree()
       // barcodeImageTest.image = UIImage(barcode: "211720")
     }
    

}



