import UIKit

public protocol Appliable {}

public extension Appliable where Self: AnyObject {
  @inlinable
  func apply(_ block: (Self) throws -> Void) rethrows -> Self {
    try block(self)
    return self
  }
}

extension NSObject: Appliable {}
