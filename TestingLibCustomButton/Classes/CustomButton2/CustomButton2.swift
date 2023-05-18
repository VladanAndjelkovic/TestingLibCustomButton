//
//  CustomButton2.swift
//  TestingLibCustomButton
//
//  Created by Vladan  Andjelkovic on 18.5.23..
//

import UIKit

public class CustomButton2: UIButton {
    
    public var action22: (() -> Void)?

    public var fontColor: UIColor = .black {
        didSet {
            setTitleColor(fontColor, for: .normal)
        }
    }
    
    var btnBackgroundColor: UIColor = .yellow {
        didSet {
            self.backgroundColor = btnBackgroundColor
        }
    }
    
    var cornerRadius: CGFloat = 16 {
        didSet {
//            self.cornerRadius = cornerRadius
            self.layer.cornerRadius = cornerRadius
        }
    }
    
    public convenience init (title: String?,
                             fontColor: UIColor,
                             fontSize: CGFloat = 25,
                             btnBackgroundColor: UIColor,
                             cornerRadius: CGFloat,
                             superview: UIView) {
        self.init(frame: .zero)
        
        setTitle(title, for: .normal)
        
        setTitleColor(fontColor, for: .normal)
        
        self.backgroundColor = btnBackgroundColor
        
        self.layer.cornerRadius = cornerRadius
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        superview.addSubview(self)
        
        NSLayoutConstraint.activate([
            self.widthAnchor.constraint(equalTo: superview.widthAnchor, multiplier: 0.95),
            self.heightAnchor.constraint(equalToConstant: 50),
            self.centerXAnchor.constraint(equalTo: superview.centerXAnchor),
            self.centerYAnchor.constraint(equalTo: superview.centerYAnchor)
        ])
        
        self.addTarget(self, action: #selector(buttonAction), for: .touchUpInside)
    }
    
    @objc
    private func buttonAction() {
        action22?()
    }
    
    public override init(frame: CGRect) {
//        self.fontColor = .clear
        super.init(frame: frame)
        self.fontColor = .clear

    }
    
    public required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

