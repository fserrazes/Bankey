//  Created on 25.10.22
//  Copyright © 2022 Flavio Serrazes. All rights reserved.

import XCTest
@testable import Bankey

final class ProfileTests: XCTestCase {
    
    func test_Profile_CanParse() throws {
        let json = """
            {
            "id": "1",
            "first_name": "any name",
            "last_name": "his last name",
            }
            """
        
        let data = json.data(using: .utf8)!
        let result = try! JSONDecoder().decode(Profile.self, from: data)
        
        XCTAssertEqual(result.id, "1")
        XCTAssertEqual(result.firstName, "any name")
        XCTAssertEqual(result.lastName, "his last name")
    }
    
}
