//
//  UIViewControllerExtensions.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 16/04/2017.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit

extension UIViewController {
    
    // MARK: - Public Methods
    class func currentViewController(controller: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let navigationController = controller as? UINavigationController {
            return currentViewController(controller: navigationController.visibleViewController)
        }
        if let tabController = controller as? UITabBarController {
            if let selected = tabController.selectedViewController {
                return currentViewController(controller: selected)
            }
        }
        if let presented = controller?.presentedViewController {
            return currentViewController(controller: presented)
        }
        
        return controller
    }
}
