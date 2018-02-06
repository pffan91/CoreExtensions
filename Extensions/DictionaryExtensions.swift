//
//  DictionaryExtensions.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 01/02/2018.
//  Copyright © 2018 VS. All rights reserved.
//

import UIKit

extension Dictionary {
    
    mutating func merge(with dictionary: Dictionary) {
        dictionary.forEach { updateValue($1, forKey: $0) }
    }
    
    func merged(with dictionary: Dictionary) -> Dictionary {
        var dict = self
        dict.merge(with: dictionary)
        return dict
    }
    
}
