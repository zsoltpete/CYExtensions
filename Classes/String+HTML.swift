//
//  String+HTML.swift
//  symblify-ios
//
//  Created by Zsolt Pete on 2017. 05. 12..
//  Copyright © 2017. CodeYard. All rights reserved.
//

import UIKit

extension String {
    
    public var html2AttributedString: NSMutableAttributedString? {
        guard let data = data(using: .utf8) else { return nil }
        do {
            return try NSMutableAttributedString(data: data, options: [NSAttributedString.DocumentReadingOptionKey: NSHTMLTextDocumentType, NSCharacterEncodingDocumentAttribute: String.Encoding.utf8.rawValue], documentAttributes: nil)
        } catch let error as NSError {
            print(error.localizedDescription)
            return  nil
        }
    }
    
    public var html2String: String {
        return html2AttributedString?.string ?? ""
    }
}

