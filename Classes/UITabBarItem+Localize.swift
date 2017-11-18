//
//  UITabBarItem+Extensions.swift
//  insimu-ios
//
//  Created by Career Mode on 2017. 09. 29..
//  Copyright © 2017. CodeYard. All rights reserved.
//

import Foundation
import UIKit

extension UITabBarItem {
    @IBInspectable var titleText: String {
        get {
            return title ?? ""
        }
        set {
            title = newValue.localized
        }
    }
}
