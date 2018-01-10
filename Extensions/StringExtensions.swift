//
//  String+UppercaseFirstLetter.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 4/14/17.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import Foundation

extension String {
    
    // MARK: - Variables
    
    var uppercaseFirst: String {
        if let firstString = self.first {
            return String(firstString).uppercased() + String(self.dropFirst())
        }
        return self
    }
    
    // MARK: - Public Methods
    func stringByReplacingFirstOccurrenceOfString(target: String, withString replaceString: String) -> String {
        if let range = self.range(of: target) {
            return self.replacingCharacters(in: range, with: replaceString)
        }
        return self
    } 
}
