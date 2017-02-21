//
//  UIColor+util.swift
//  Ongair
//
//  Created by MAC USER on 06/02/2017.
//  Copyright © 2017 Neptune. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init (r: CGFloat, g: CGFloat, b: CGFloat, a : CGFloat) {
        self.init(r: r/255, g: g/255, b: b/255, a : 1)
    }
    
    
    
    
    func hexStringToUIColor (hex:String) -> UIColor {
        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if (cString.hasPrefix("#")) {
            cString.remove(at: cString.startIndex)
        }
        
        if ((cString.characters.count) != 6) {
            return UIColor.gray
        }
        
        var rgbValue:UInt32 = 0
        Scanner(string: cString).scanHexInt32(&rgbValue)
        
        return UIColor(
            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
            alpha: CGFloat(1.0)
        )
    }

}
