//
//  File.swift
//  Xavier-HS
//
//  Created by Eric Li on 10/22/19.
//  Copyright © 2019 Cornette. All rights reserved.
//

import UIKit
class OnboardingPager : UIPageViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
        @IBAction func continueButton(_ sender: Any) {
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
            
            let mainVC = storyboard.instantiateViewController(withIdentifier: "mainVC") as! UIViewController
        
            self.present(mainVC, animated: true, completion: nil)
        }
    
    
    
    }
    
    
        
    




