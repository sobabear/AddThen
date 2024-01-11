import UIKit

@resultBuilder
struct Viewable {
    public static func buildBlock() -> [UIView] { [] }

    public static func buildBlock(_ attrs: UIView...) -> [UIView] {
        return attrs
    }
    
    public static func buildBlock(_ attrs: [UIView]) -> [UIView] {
        return attrs
    }
    
    public static func buildExpression(_ expression: UIView) -> [UIView] {
        [expression]
    }

    public static func buildBlock(_ components: [UIView]...) -> [UIView] {
        components.flatMap { $0 }
    }
}
