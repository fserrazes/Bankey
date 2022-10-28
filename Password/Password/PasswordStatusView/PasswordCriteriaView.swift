//  Created on 26.10.22
//  Copyright © 2022 Flavio Serrazes. All rights reserved.

import UIKit

class PasswordCriteriaView: UIView {
    private let stackView = UIStackView()
    public let imageView = UIImageView()
    private let label = UILabel()
    
    public let circleImage = UIImage(systemName: "circle")!
        .withTintColor(.tertiaryLabel, renderingMode: .alwaysOriginal)
    
    var isCriteriaMet: Bool = false {
        didSet {
            if isCriteriaMet {
                let checkmarkImage = UIImage(systemName: "checkmark.circle")!
                    .withTintColor(.systemGreen, renderingMode: .alwaysOriginal)
                imageView.image = checkmarkImage
            } else {
                let xmarkImage = UIImage(systemName: "xmark.circle")!
                    .withTintColor(.systemRed, renderingMode: .alwaysOriginal)
                imageView.image = xmarkImage
            }
        }
    }
    
    init(text: String) {
        super.init(frame: .zero)
        
        label.text = text
        
        style()
        layout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override var intrinsicContentSize: CGSize {
        return CGSize(width: 200, height: 40)
    }
    
    func reset() {
        isCriteriaMet = false
        imageView.image = circleImage
    }
}

extension PasswordCriteriaView {
    
    private func style() {
        translatesAutoresizingMaskIntoConstraints = false
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
//        stackView.backgroundColor = .systemGray
        stackView.spacing = 8
        
        // image
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(systemName: "circle")!.withTintColor(.tertiaryLabel, renderingMode: .alwaysOriginal)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = .preferredFont(forTextStyle: .subheadline)
        label.textColor = .secondaryLabel
    }
    
    private func layout() {
        stackView.addArrangedSubview(imageView)
        stackView.addArrangedSubview(label)
        
        addSubview(stackView)
        
        // Stack
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: topAnchor),
            stackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            stackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            stackView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        // image
        NSLayoutConstraint.activate([
            imageView.heightAnchor.constraint(equalTo: imageView.widthAnchor)
        ])
        
        // CHCR
        imageView.setContentHuggingPriority(UILayoutPriority.defaultHigh, for: .horizontal)
        label.setContentHuggingPriority(UILayoutPriority.defaultLow, for: .horizontal)
    }
}
