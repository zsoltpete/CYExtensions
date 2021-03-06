//
//  UIView+Shadow.swift
//  insimu-ios
//
//  Created by Ujlaki Imre on 2017. 06. 30..
//  Copyright © 2017. CodeYard. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return self.layer.cornerRadius
        }
        set {
            self.layer.cornerRadius = newValue
            
            // Don't touch the masksToBound property if a shadow is needed in addition to the cornerRadius
            if shadow == false {
                self.layer.masksToBounds = true
            }
        }
    }
    
    /**
     Create corner rounds of a view.
     
     - parameter corners: Represent the corners of the view
     - parameter radius: The radius of the corners
     */
    public func roundCorners(corners:UIRectCorner, radius: CGFloat) {
        self.layer.cornerRadius = 0.0
        DispatchQueue.main.async {
            let path = UIBezierPath(roundedRect: self.bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
            let mask = CAShapeLayer()
            mask.path = path.cgPath
            self.layer.mask = mask
        }
    }
}
