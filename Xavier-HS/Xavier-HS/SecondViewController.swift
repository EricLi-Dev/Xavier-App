//
//  SecondViewController.swift
//  Xavier-HS
//
//  Created by Eric Li on 8/30/19.
//  Copyright © 2019 Cornette. All rights reserved.
//

import UIKit
import RSBarcodes_Swift
import AVFoundation

class SecondViewController: UIViewController {
    
    @IBOutlet weak var barcode: UIImageView!
    let barcodeNum = UserDefaults.standard.object(forKey: "barcode")
    override func viewDidLoad() {
        super.viewDidLoad()
        barcode.image = RSUnifiedCodeGenerator.shared.generateCode(barcodeNum as? String ?? "", machineReadableCodeObjectType: AVMetadataObject.ObjectType.code39.rawValue)
        // Do any additional setup after loading the view.
    }


}

