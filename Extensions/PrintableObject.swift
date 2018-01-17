//
//  PrintableObject.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 24/03/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit

extension CustomStringConvertible {
    var description: String {
        var description: String = ""
        
        description = "***** \(type(of: self)) - <\( Unmanaged.passUnretained(self as AnyObject).toOpaque())>***** \n"
        let selfMirror = Mirror(reflecting: self)
        for child in selfMirror.children {
            if let propertyName = child.label {
                description += "\(propertyName): \(child.value)\n"
            }
        }
        return description
    }
}
