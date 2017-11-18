//
//  UIExtended.swift
//  insimu-ios
//
//  Created by Eszenyi Gábor on 2017. 10. 04..
//  Copyright © 2017. CodeYard. All rights reserved.
//

import UIKit

extension UITabBarItem {
    @IBInspectable var localizedTitle: String {
        get {
            return title ?? ""
        }
        set {
            title = newValue.localized
        }
    }
}

extension UIBarButtonItem {
    @IBInspectable var localizedTitle: String {
        get {
            return title ?? ""
        }
        set {
            title = newValue.localized
        }
    }
}

extension UIButton {
    @IBInspectable var localizedTitle: String {
        get {
            return titleLabel?.text ?? ""
        }
        set {
            #if TARGET_INTERFACE_BUILDER
                var bundle = NSBundle(forClass: type(of: self))
                setTitle(bundle.localizedStringForKey(newValue.localized, value:"", table: nil), for: .normal)
            #else
                setTitle(newValue.localized, for: .normal)
            #endif
        }
    }
}

extension UILabel {
    @IBInspectable var localizedTitle: String {
        get {
            return text ?? ""
        }
        set {
            #if TARGET_INTERFACE_BUILDER
                var bundle = NSBundle(forClass: type(of: self))
                text = bundle.localizedStringForKey(newValue.localized, value:"", table: nil)
            #else
                text = newValue.localized
            #endif
        }
    }
}

extension UITextField {
    @IBInspectable var localizedTitle: String {
        get {
            return text ?? ""
        }
        set {
            #if TARGET_INTERFACE_BUILDER
                var bundle = NSBundle(forClass: type(of: self))
                text = bundle.localizedStringForKey(newValue.localized, value:"", table: nil)
            #else
                text = newValue.localized
            #endif
        }
    }
    
    @IBInspectable var localizedPlaceholder: String {
        get {
            return placeholder ?? ""
        }
        set {
            #if TARGET_INTERFACE_BUILDER
                var bundle = NSBundle(forClass: type(of: self))
                placeholder = bundle.localizedStringForKey(newValue.localized, value:"", table: nil)
            #else
                placeholder = newValue.localized
            #endif
        }
    }
}


