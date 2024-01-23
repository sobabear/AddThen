import UIKit

public protocol Then {}

public extension Then where Self: AnyObject {
  @inlinable
  func then(_ block: (Self) throws -> Void) rethrows -> Self {
    try block(self)
    return self
  }
}

extension NSObject: Then {}
