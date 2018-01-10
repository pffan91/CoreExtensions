//
//  UITableViewCell+CellIdentifier.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 4/11/17.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import UIKit

extension UITableViewCell {
    
    // MARK: - Varialbes
    static var cellIdentifier: String {
        return String(describing: self)
    }
    
    static var nib: UINib {
        return UINib(nibName: self.cellIdentifier, bundle: nil)
    }
}
