//
//  CustomButton.swift
//  Pods-TestingLibCustomButton_Example
//
//  Created by Vladan  Andjelkovic on 16.5.23..
//

import UIKit

public class CustomButton: UIButton {
    private var viewModel: ButtonViewModel?
    
    public var height:CGFloat?
    
    public func configure(with viewModel: ButtonViewModel) {
        self.viewModel = viewModel
        setTitle(viewModel.title, for: .normal)
        setTitleColor(viewModel.fontColor, for: .normal)
        self.backgroundColor = viewModel.backgroundColor
        self.layer.cornerRadius = viewModel.cornerRadius
        self.titleLabel?.font = UIFont(name: "Arial", size: viewModel.fontSize)
        //dodati ikonu UIButton-u i napraviti padding
//        self.setImage(UIImage(named:"dashboard_help_icon"), for: .normal)

        self.contentEdgeInsets = UIEdgeInsets(top: 0, left: viewModel.leftPadding, bottom: 0, right: viewModel.rightPadding)
        height = viewModel.height
        self.titleLabel?.font = .systemFont(ofSize: viewModel.fontSize, weight: viewModel.fontWeight)
        addTarget(self, action: #selector(buttonTapped), for: .touchUpInside)
    }
    

    @objc func buttonTapped() {
        print("viewButtonPressed")
        viewModel?.performAction()
    }
}
