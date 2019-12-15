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
    let dateFinderC = dateFinder()
    
    //TODO: Move Web Scraping to seperate class file.
    //WEB SCRAPING_______________________________
    
    let webView = WKWebView()
    var htmlStr:String = ""
    
    func parseAndExecute() { webView.evaluateJavaScript("document.documentElement.outerHTML.toString()", completionHandler: { (html: Any?, error: Error?) in
        do {
            
            let doc: Document = try SwiftSoup.parse(html as! String)
            let elements = try doc.getAllElements()
            var firstEvent = true
            var eventNum = 0
            for element in elements {
                switch try element.className() {
                case "date-container" :
                    if firstEvent == true {
                        print("Date: \(try element.text())")
                        let parent = element.parent()
                        let midBox = parent!.parent()
                        
                        let title = try midBox!.select("h3.title").text()
                        print(title)
                        self.Event1.text = "\(title) - \(try element.text())"
                        firstEvent = false
                    } else {
                        print("Date: \(try element.text())")
                        let midBox = element.parent()
                        let title = try midBox!.select("h3.title").text()
                        print(title)
                        if eventNum == 0 {
                            self.Event2.text = "\(title) - \(try element.text())"
                            eventNum += 1
                        } else {
                            self.Event3.text = "\(title) - \(try element.text())"
                        }
                    }
                    
                default:
                    let _ = 1
                }
            }
        } catch Exception.Error(let type, let message) {
            print(type)
            print("Message: \(message)")
        } catch {
            print("error")
        }
    })
    }

    
    func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!)
    {
            self.parseAndExecute()
    }
    //---------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
//-------WEB SCRAPING AREA-------
        
        let url = URL(string: "http://www.xavierhs.org/s/81/rd16/start.aspx")!
        let request = URLRequest(url: url)
        webView.load(request)
        webView.navigationDelegate = self
        dateFinderC.setString()
        WeekDay.text = dateFinderC.weekDay
        Month.text = dateFinderC.monthWord
        Day.text = String(dateFinderC.day) + "," + " "

     }
    

}



