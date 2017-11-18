//
//  Array+Sample.swift
//  insimu-ios
//
//  Created by Ujlaki Imre on 2017. 08. 31..
//  Copyright © 2017. CodeYard. All rights reserved.
//

import Foundation


extension Array {
    
    public func sample() -> Element? {
        if isEmpty { return nil }
        let index = Int(arc4random_uniform(UInt32(self.count)))
        return self[index]
    }
}
