//
//  ButtonModel.swift
//  Pods-TestingLibCustomButton_Example
//
//  Created by Vladan  Andjelkovic on 16.5.23..
//

import Foundation

public class ButtonModel {
    var title: String?
    var action: () -> Void
    let width: Int = 100
    let height: CGFloat = 50
    let leftPadding: CGFloat = 16
    let rightPadding: CGFloat = 16
    var cornerRadius: CGFloat = 16
    let fontSize: CGFloat = 25
    var fontWeight: UIFont.Weight = .bold
    var fontColor: UIColor
    var backgroundColor: UIColor
    

    public init(title: String, cornerRadius: CGFloat, fontWeight: UIFont.Weight, fontColor: UIColor, backgroundColor: UIColor, action: @escaping () -> Void) {
        self.title = title
        self.action = action
        self.cornerRadius = cornerRadius
        self.fontWeight = fontWeight
        self.fontColor = fontColor
        self.backgroundColor = backgroundColor  
    }
}


