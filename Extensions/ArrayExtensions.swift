//
//  ArrayExtensions.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 12/05/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit

extension Array {
    mutating func removeObject<U: Equatable>(object: U) -> Bool {
        for (idx, objectToCompare) in self.enumerated() {
            if let to = objectToCompare as? U {
                if object == to {
                    self.remove(at: idx)
                    return true
                }
            }
        }
        return false
    }
}
