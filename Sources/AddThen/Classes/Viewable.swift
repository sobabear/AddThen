import UIKit

@resultBuilder
public struct Viewable {
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
    
    // Handling optional views (for `if` statements without `else`)
    public static func buildOptional(_ component: [UIView]?) -> [UIView] {
        return component ?? []
    }

    // Handling `if-else` statements
    public static func buildEither(first component: [UIView]) -> [UIView] {
        return component
    }

    public static func buildEither(second component: [UIView]) -> [UIView] {
        return component
    }
}
