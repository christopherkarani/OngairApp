////
////  UIColor+util.swift
////  Ongair
////
////  Created by MAC USER on 06/02/2017.
////  Copyright © 2017 Neptune. All rights reserved.
////
//
//import UIKit
//extension UIColor {
//    
//    var puurpleColor : UIColor {
//        get {
//            return hexStringToUIColor(hex: "#733389")
//        }
//    }
//    
//    var pinkColor: UIColor {
//        get {
//            return hexStringToUIColor(hex: "EF4663")
//        }
//    }
//    
//    var commentBoxColor : UIColor {
//        get {
//            return hexStringToUIColor(hex: "#E8E5EE")
//        }
//    }
//    
//    var otherCommentBoxColor : UIColor {
//        get {
//            return hexStringToUIColor(hex: "#E8E5EE")
//        }
//    }
//    
//    var iconsColor : UIColor {
//        get {
//            return hexStringToUIColor(hex: "#E8E5EE")
//        }
//    }
//    
//    var fontColor : UIColor {
//        get {
//            return hexStringToUIColor(hex: "#858585")
//        }
//    }
//    
//    func hexStringToUIColor (hex:String) -> UIColor {
//        var cString:String = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
//        
//        if (cString.hasPrefix("#")) {
//            cString.remove(at: cString.startIndex)
//        }
//        
//        if ((cString.characters.count) != 6) {
//            return UIColor.gray
//        }
//        
//        var rgbValue:UInt32 = 0
//        Scanner(string: cString).scanHexInt32(&rgbValue)
//        
//        return UIColor(
//            red: CGFloat((rgbValue & 0xFF0000) >> 16) / 255.0,
//            green: CGFloat((rgbValue & 0x00FF00) >> 8) / 255.0,
//            blue: CGFloat(rgbValue & 0x0000FF) / 255.0,
//            alpha: CGFloat(1.0)
//        )
//    }
//    
//    
//    fileprivate func RGB(_ r: CGFloat, _ g: CGFloat, _ b: CGFloat) -> UIColor {
//        
//        return UIColor(red: r/255, green: g/255, blue: b/255, alpha: 1)
//    }
//}
