import Foundation
import UIKit

public extension UIViewController {
    @discardableResult
    func body(@Viewable block: () -> [UIView]) -> Self {
        view.adds(block())
        return self
    }
}
