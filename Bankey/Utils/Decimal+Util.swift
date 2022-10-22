//  Created on 24.10.22
//  Copyright © 2022 Flavio Serrazes. All rights reserved.

import Foundation

extension Decimal {
    var doubleValue: Double {
        return NSDecimalNumber(decimal:self).doubleValue
    }
}
