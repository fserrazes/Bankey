//  Created on 28.10.22
//  Copyright © 2022 Flavio Serrazes. All rights reserved.

import XCTest
@testable import Password

final class PasswordStatusViewTests: XCTestCase {
    
    var statusView: PasswordStatusView!
    let validPassword = "12345678Aa!"
    let tooShort = "123Aa!"
    
    let twoOfFour = "12345678A"
    let threeOfFour = "12345678Aa"
    let fourOfFour = "12345678Aa!"
    
    override func setUpWithError() throws {
        super.setUp()
        statusView = PasswordStatusView()
    }
    
    func test_PasswordStatusView_ShowCheckmarkWhenHasValidPassword() {
        statusView.shouldResetCriteria = true
        statusView.updateDisplay(validPassword)
        XCTAssertTrue(statusView.lengthCriteriaView.isCriteriaMet)
        XCTAssertTrue(statusView.lengthCriteriaView.isCheckMarkImage) // ✅
    }
    
    func test_PasswordStatusView_ResetCheckmarkWhenHasShortPassword()  {
        statusView.shouldResetCriteria = true
        statusView.updateDisplay(tooShort)
        XCTAssertFalse(statusView.lengthCriteriaView.isCriteriaMet)
        XCTAssertTrue(statusView.lengthCriteriaView.isResetImage) // ⚪️
    }

    func test_PasswordStatusView_ShowCheckmarkWhenLooseFocusWithValidPassword()  {
        statusView.shouldResetCriteria = false
        statusView.updateDisplay(validPassword)
        XCTAssertTrue(statusView.lengthCriteriaView.isCriteriaMet)
        XCTAssertTrue(statusView.lengthCriteriaView.isCheckMarkImage) // ✅
    }
    
    func test_PasswordStatusView_RedXWhenLooseFocusWithShorPassword()  {
        statusView.shouldResetCriteria = false
        statusView.updateDisplay(tooShort)
        XCTAssertFalse(statusView.lengthCriteriaView.isCriteriaMet)
        XCTAssertTrue(statusView.lengthCriteriaView.isXmarkImage) // ❌
    }
    
    func test_PasswordStatusView_TwoOfFourValidChecks()  {
        XCTAssertFalse(statusView.validate(twoOfFour))
    }
    
    func test_PasswordStatusView_ThreeOfFourValidChecks()  {
        XCTAssertTrue(statusView.validate(threeOfFour))
    }
    
    func test_PasswordStatusView_FourOfFourValidChecks()  {
        XCTAssertTrue(statusView.validate(fourOfFour))
    }
}

// MARK: - Helper
extension PasswordCriteriaView {
    var isCheckMarkImage: Bool {
        let checkmarkImage = UIImage(systemName: "checkmark.circle")!
            .withTintColor(.systemGreen, renderingMode: .alwaysOriginal)
        return imageView.image == checkmarkImage
    }
    
    var isXmarkImage: Bool {
        let xmarkImage = UIImage(systemName: "xmark.circle")!
            .withTintColor(.systemRed, renderingMode: .alwaysOriginal)
        
        return imageView.image == xmarkImage
    }
    
    var isResetImage: Bool {
        return imageView.image == circleImage
    }
}
