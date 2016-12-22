//
//  Helpers.swift
//  ToDo
//
//  Created by Keertika Gupta on 22/12/16.
//  Copyright © 2016 Keertika Gupta. All rights reserved.
//

import Foundation
import UIKit
extension UITextField {
    
    func underlined(){
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = UIColor.lightGray.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
}
