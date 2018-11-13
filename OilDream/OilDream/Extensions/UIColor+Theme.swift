//
//  UIColor+Theme.swift
//  OilDream
//
//  Created by dave76 on 13/11/2018.
//  Copyright © 2018 dave76. All rights reserved.
//

import UIKit

extension UIColor {
  // Navigation Bar Color Setting
  static let naviBarCustomYellow = UIColor(red: 255 / 255, green: 229 / 255, blue: 99 / 255, alpha: 1.0)
  
  // color Setting Method easily
  static func rgb(red: CGFloat, green: CGFloat, blue: CGFloat) -> UIColor {
    return UIColor(red: red / 255, green: green / 255, blue: blue / 255, alpha: 1.0)
  }
}
