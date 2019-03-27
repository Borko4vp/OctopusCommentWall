//
//  UIColor.swift
//  OctopusCommentWall
//
//  Created by Borko Tomic on 3/27/19.
//  Copyright © 2019 Borko Tomic. All rights reserved.
//

import UIKit

extension UIColor {
    func toFlutterColorString() -> String {
        var r: CGFloat = 0
        var g: CGFloat = 0
        var b: CGFloat = 0
        var a: CGFloat = 0
        
        self.getRed(&r, green: &g, blue: &b, alpha: &a)
        
        return String(
            format: "0x%02X%02X%02X%02X",
            Int(a * 0xff),
            Int(r * 0xff),
            Int(g * 0xff),
            Int(b * 0xff)
        )

    }
}
