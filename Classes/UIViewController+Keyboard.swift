//
//  UIViewController+Keyboard.swift
//  insimu-ios
//
//  Created by Zsolt Pete on 2017. 08. 09..
//  Copyright © 2017. CodeYard. All rights reserved.
//

import UIKit

extension UIViewController {
    /**
     Hide keyboard when tap a view.
     */
    public func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    private func dismissKeyboard() {
        view.endEditing(true)
    }
}

