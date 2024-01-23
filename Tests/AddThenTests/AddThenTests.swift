import XCTest
import UIKit
@testable import AddThen

final class AddThenTests: XCTestCase {
    
    var testVC: TestViewController!
    
    override func setUpWithError() throws {
        try super.setUpWithError()
        
        self.testVC = TestViewController()
    }
    
    func testViewController() throws {
        _ = testVC.view
        testVC.loadViewIfNeeded()
        
        XCTAssertEqual(testVC.view.subviews.count, 1)
        let certainStackView = testVC.certainStackView
        XCTAssertEqual(certainStackView?.arrangedSubviews.count, 2)
    }
}


class TestViewController: UIViewController {
    var label = UILabel()
    var certainStackView: UIStackView!
    var condition = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        body {
            UIStackView {
                label.then({ $0.text = "Add then" })
                UIButton(type: .custom)
                
                if true {
                    UIView()
                }
                
                
            }.then({ $0.axis = .vertical; self.certainStackView = $0 })
        }
    }
}
