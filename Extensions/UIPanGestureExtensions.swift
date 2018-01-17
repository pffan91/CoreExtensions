//
//  UIPanGestureExtension.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 14/04/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit

public extension UIPanGestureRecognizer {

    // MARK: - Public Methods
    public func isLeft(theViewYouArePassing: UIView) -> Bool {
        let velocity: CGPoint = self.velocity(in: theViewYouArePassing)
        if velocity.x > 0 {
            return false
        } else {
            return true
        }
    }
}
