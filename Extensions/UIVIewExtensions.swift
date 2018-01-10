//
//  UIVIewExtensions.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 21/03/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit

public extension UIView {
    
    // MARK: - Inspectables
    @IBInspectable public var maskToBounds: Bool {
        get {
            return layer.masksToBounds
        }
        set {
            layer.masksToBounds = newValue
        }
    }
    
}
