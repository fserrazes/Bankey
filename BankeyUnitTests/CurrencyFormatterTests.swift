//  Created on 24.10.22
//  Copyright © 2022 Flavio Serrazes. All rights reserved.

import XCTest
@testable import Bankey

final class CurrencyFormatterTests: XCTestCase {
    
    var formatter: CurrencyFormatter!
    let locale = Locale.current
    
    override func setUp() {
        super.setUp()
        formatter = CurrencyFormatter()
    }
    
    func test_BreakDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(929466.23)
        XCTAssertEqual(result.0, "929,466")
        XCTAssertEqual(result.1, "23")
    }
    
    
    func testDollarsFormatted() throws {
        let currencySymbol = locale.currencySymbol!
        let result = formatter.dollarsFormatted(929466.23)
        XCTAssertEqual(result, "\(currencySymbol)929,466.23")
    }
    
    func testZeroDollarsFormatted() throws {
        let currencySymbol = locale.currencySymbol!
        let result = formatter.dollarsFormatted(0.00)
        XCTAssertEqual(result, "\(currencySymbol)0.00")
    }
    
    func test_BreakZeroDollarsIntoCents() throws {
        let result = formatter.breakIntoDollarsAndCents(0.00)
        XCTAssertEqual(result.0, "0")
        XCTAssertEqual(result.1, "00")
    }
}
