//  Created on 21.10.22
//  Copyright © 2022 Flavio Serrazes. All rights reserved.

import Foundation
import UIKit

class LoginView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: UIView.noIntrinsicMetric, height: UIView.noIntrinsicMetric)
    }
}

extension LoginView {
    private func style() {
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    private func layout() {
        
    }
}
