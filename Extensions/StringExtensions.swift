//
//  String+UppercaseFirstLetter.swift
//  VS
//
//  Created by Vladyslav Semenchenko on 4/14/17.
//  Copyright © 2017 Vladyslav Semenchenko. All rights reserved.
//

import Foundation

public extension String {
    
    // MARK: - Variables
    public var uppercaseFirst: String {
        if let firstString = self.first {
            return String(firstString).uppercased() + String(self.dropFirst())
        }
        return self
    }
    
    // MARK: - Public Methods
    public func stringByReplacingFirstOccurrenceOfString(target: String, withString replaceString: String) -> String {
        if let range = self.range(of: target) {
            return self.replacingCharacters(in: range, with: replaceString)
        }
        return self
    }
    
    public func height(withConstrainedWidth width: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: width, height: .greatestFiniteMagnitude)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font: font], context: nil)
        
        return ceil(boundingBox.height)
    }
    
    public func width(withConstrainedHeight height: CGFloat, font: UIFont) -> CGFloat {
        let constraintRect = CGSize(width: .greatestFiniteMagnitude, height: height)
        let boundingBox = self.boundingRect(with: constraintRect, options: .usesLineFragmentOrigin, attributes: [NSAttributedStringKey.font: font], context: nil)
        
        return ceil(boundingBox.width)
    }
}
