
#if os(iOS)

import XCTest
@testable import FeatureFlags

class FeatureFlagsUITests: XCTestCase {

    let file = URL(fileURLWithPath: NSTemporaryDirectory() + "test.plist")

    // MARK: - launch
    
    func test_launch_shouldReturnViewControllerWithMutator() {
        let viewController = FeatureFlagsUI.launch(sharedFeatureFlagFile: file) as? FeatureFlagsViewController
        XCTAssertNotNil(viewController)
        XCTAssertNotNil(viewController?.featureFlagsWriter)
    }
}

#endif
