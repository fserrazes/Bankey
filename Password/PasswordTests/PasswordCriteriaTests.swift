//  Created on 28.10.22
//  Copyright © 2022 Flavio Serrazes. All rights reserved.

import XCTest
@testable import Password

final class PasswordLegthCriteriaTests: XCTestCase {
    
    // Boundary conditions: 8-32
    func test_LengthCriteriaMet_isInvalidWithShortPassword()  {
        XCTAssertFalse(PasswordCriteria.lengthCriteriaMet("1234567"))
    }
    
    func test_LengthCriteriaMet_isInvalidWithLongPassword()  {
        let password = "123456789012345678901234567890123"
        XCTAssertGreaterThanOrEqual(password.count, 32)
        XCTAssertFalse(PasswordCriteria.lengthCriteriaMet(password))
    }
    
    func test_LengthCriteriaMet_isValidWithShortPassword()  {
        XCTAssertTrue(PasswordCriteria.lengthCriteriaMet("12345678"))
    }
    
    func test_LengthCriteriaMet_isValidWithLongPassword()  {
        let password = "12345678901234567890123456789012"
        XCTAssertLessThanOrEqual(password.count, 32)
        XCTAssertTrue(PasswordCriteria.lengthCriteriaMet(password))
    }
    
    // Boundary conditions: Length and no spaces
    func test_LengthAndNoSpaceMet_WithValidLenghtAndNoSpace()  {
        XCTAssertTrue(PasswordCriteria.lengthAndNoSpaceMet("12345678"))
    }
    
    func test_LengthAndNoSpaceMet_WithValidLenghtAndSpace()  {
        XCTAssertFalse(PasswordCriteria.lengthAndNoSpaceMet("1234567 8"))
    }
}

final class PasswordOtherCriteriaTests: XCTestCase {
    
    // Boundary conditions: No spaces
    func test_NoSpaceCriteriaMet_WithNoSpace()  {
        XCTAssertTrue(PasswordCriteria.noSpaceCriteriaMet("abc"))
    }
    
    func test_NoSpaceCriteriaMet_WithSpace()  {
        XCTAssertFalse(PasswordCriteria.noSpaceCriteriaMet("a bc"))
    }
    
    // Boundary conditions: Upper case
    func test_UpperCase_isValid()  {
        XCTAssertTrue(PasswordCriteria.uppercaseMet("A"))
    }
    
    func test_UpperCase_isInvalid()  {
        XCTAssertFalse(PasswordCriteria.uppercaseMet("a"))
    }
    
    // Boundary conditions: Lower case
    func test_LowerCase_isValid()  {
        XCTAssertTrue(PasswordCriteria.lowercaseMet("a"))
    }
    
    func test_LowerCase_isInvalid()  {
        XCTAssertFalse(PasswordCriteria.lowercaseMet("A"))
    }
    
    // Boundary conditions: Has digits
    func test_Digit_isValid()  {
        XCTAssertTrue(PasswordCriteria.digitMet("1"))
    }
    
    func test_Digit_isInvalid()  {
        XCTAssertFalse(PasswordCriteria.digitMet("a"))
    }
    
    // Boundary conditions: Special character
    func test_SpecicalChar_isValid() throws {
        XCTAssertTrue(PasswordCriteria.specialCharacterMet("@"))
    }
    
    func test_SpecicalChar_isInvalid() throws {
        XCTAssertFalse(PasswordCriteria.specialCharacterMet("a"))
    }
}
