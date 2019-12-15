//
//  barcodeScanner.swift
//  Xavier-HS
//
//  Created by Thomas Ledwith on 12/14/19.
//  Copyright © 2019 Cornette. All rights reserved.
//

import Foundation
import UIKit

extension UIImage {

    convenience init?(barcode: String) {
        let data = barcode.data(using: .ascii)
        guard let filter = CIFilter(name: "CIAztecCodeGenerator") else {
            return nil
        }
        filter.setValue(data, forKey: "inputMessage")
        guard let ciImage = filter.outputImage else {
            return nil
        }
        self.init(ciImage: ciImage)
    }

}
