import UIKit

public extension UIView {
    func body(@Viewable block: () -> UIView) -> Self {
        self.add(block())
        return self
    }
}

