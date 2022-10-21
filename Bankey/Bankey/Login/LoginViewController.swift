//  Created on 21.10.22
//  Copyright © 2022 Flavio Serrazes. All rights reserved.

import UIKit

class LoginViewController: UIViewController {

    let loginView = LoginView()
    override func viewDidLoad() {
        super.viewDidLoad()
        style()
        layout()
        
    }
}

extension LoginViewController {
    private func style() {
        loginView.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    private func layout() {
        view.addSubview(loginView)
        
        // multiplier: 1 = 8 pts
        NSLayoutConstraint.activate([
            loginView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            loginView.leadingAnchor.constraint(equalToSystemSpacingAfter: view.leadingAnchor, multiplier: 1),
            view.trailingAnchor.constraint(equalToSystemSpacingAfter: loginView.trailingAnchor, multiplier: 1)

        ])
    }
}

