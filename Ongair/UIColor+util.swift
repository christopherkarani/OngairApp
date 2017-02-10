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
}
