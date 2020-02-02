//
//  File.swift
//  Xavier-HS
//
//  Created by Eric Li on 10/22/19.
//  Copyright © 2019 Cornette. All rights reserved.
//

import UIKit
class OnboardingPager : UIViewController {
//    let defaults = UserDefaults.standard
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    @IBOutlet weak var firstName: UITextField!
    
    @IBAction func firstName(_ sender: Any) {
        UserDefaults.standard.set(firstName.text, forKey: "firstName")
    }
    @IBOutlet weak var barcodeNum: UITextField!
    
    @IBAction func barcodeNum(_ sender: Any) {
        UserDefaults.standard.set(barcodeNum.text, forKey: "barcode")
    }
    
    @IBAction func continueButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        let mainVC = storyboard.instantiateViewController(withIdentifier: "firstScene") as! FirstViewController
        self.present(mainVC, animated: true, completion: nil)
        
    }
    
    
    }
    
    
        
    




