import Foundation
import XCTest
@testable import CustomTuist

final class CustomTuistTests: XCTestCase {
    func test_twoPlusTwo_isFour() {
        XCTAssertEqual(2+2, 4)
    }
    
    func testHomeViewController_호출() {
        let sut = HomeViewController.init()
        XCTAssertNotNil(sut)
    }
}
