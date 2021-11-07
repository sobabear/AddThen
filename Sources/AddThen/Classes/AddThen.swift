//
//  AddThen.swift
//  Pods
//
//  Created by Yongjun Lee on 2021/10/01.
//

import UIKit

public extension UIView {
    @discardableResult
    func add<T: UIView>(_ subview: T, then closure: ((T) -> Void)? = nil) -> T {
        addSubview(subview)
        closure?(subview)
        return subview
    }
    
    @discardableResult
    func adds<T: UIView>(_ subviews: [T], then closure: (([T]) -> Void)? = nil) -> [T] {
        subviews.forEach { addSubview($0) }
        closure?(subviews)
        return subviews
    }
}

@available(iOS 11.0, *)
public extension UIStackView {
    @discardableResult
    func addArranged<T: UIView>(_ subview: T, spacing: CGFloat? = nil, then closure: ((T) -> Void)? = nil) -> T {
        addArrangedSubview(subview)
        if let spacing = spacing {
            setCustomSpacing(spacing, after: subview)
        }
        closure?(subview)
        return subview
    }
    
    @discardableResult
    func addArranged<T: UIView>(_ subviews: [T], spacing: CGFloat? = nil, then closure: (([T]) ->Void)? = nil) -> [T] {
        for subview in subviews {
            addArrangedSubview(subview)
            if let spacing = spacing {
                setCustomSpacing(spacing, after: subview)
            }
        }
        closure?(subviews)
        return subviews
    }
    @discardableResult
    func insertArranged<T: UIView>(_ subview: T, at: Int, _ closure: ((T) -> Void)? = nil) -> T {
        insertArrangedSubview(subview, at: at)
        closure?(subview)
        return subview
    }
}

public extension UIViewController {
    @discardableResult
    func add<T: UIViewController>(_ subViewController: T, then closure: ((T) throws -> Void)? = nil) rethrows -> T {
        addChild(subViewController)
        try closure?(subViewController)
        return subViewController
    }
}
