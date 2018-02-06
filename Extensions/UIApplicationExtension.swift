//
//  UIApplication.swift
//  GPUpdate
//
//  Created by Vladyslav Semenchenko on 12/27/17.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit

public extension UIApplication {
    
    public class func topViewController(_ viewController: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = viewController as? UINavigationController {
            return topViewController(nav.visibleViewController)
        }
        if let tab = viewController as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(selected)
            }
        }
        if let presented = viewController?.presentedViewController {
            return topViewController(presented)
        }
        
        return viewController
    }
}
