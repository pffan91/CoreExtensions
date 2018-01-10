import Foundation

/// A protocol to allow grabbing an array of all the cases of a string enum.
/// Inspired by: http://stackoverflow.com/a/32429125/681493
public protocol StringCaseListable {
    /// - parameter rawValue: The raw string value. Matches the initializer of RawRepresentable without the Self restrictions.
    init?(rawValue: String)
}

// MARK: - Default Implementation

public extension StringCaseListable {
    
    /// - returns: A generated array of all the cases in this enum.
    static var AllCases: [Self] {
        var caseIndex: Int = 0
        // Create an iterator
        let generator: AnyIterator<Self> = AnyIterator {
            // In which each time it goes around, the case index is used
            let current: Self = withUnsafePointer(to: &caseIndex) {
                // To grab the appropriate memory for one of this type, and grab it's pointee
                $0.withMemoryRebound(to: Self.self, capacity: 1) { $0.pointee }
            }
            caseIndex += 1
            return current
        }
        return Array(generator)
    }
    
}
