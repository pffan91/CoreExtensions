//
//  UITableViewCell+CellIdentifier.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 4/11/17.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit

public extension UITableViewCell {
    
    // MARK: - Varialbes
    public static var cellIdentifier: String {
        return String(describing: self)
    }
    
    public static var nib: UINib {
        return UINib(nibName: self.cellIdentifier, bundle: nil)
    }
}
