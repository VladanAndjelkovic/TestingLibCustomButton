//
//  ButtonViewModel.swift
//  Pods-TestingLibCustomButton_Example
//
//  Created by Vladan  Andjelkovic on 16.5.23..
//

import Foundation

public class ButtonViewModel {
    private let buttonModel: ButtonModel

   public init(buttonModel: ButtonModel) {
        self.buttonModel = buttonModel
    }

    var title: String {
        return buttonModel.title ?? ""
    }
    
    var fontSize: CGFloat {
        return buttonModel.fontSize
    }
    
    var leftPadding: CGFloat {
        return buttonModel.leftPadding
    }
    
    var rightPadding: CGFloat {
        return buttonModel.rightPadding
    }
    
    var height: CGFloat {
        return buttonModel.height
    }
    
    var fontColor: UIColor {
        return buttonModel.fontColor 
    }
    
    var backgroundColor: UIColor {
        return buttonModel.backgroundColor
    }
    
    var cornerRadius: CGFloat {
        return buttonModel.cornerRadius
    }
    
    var fontWeight: UIFont.Weight {
        return buttonModel.fontWeight
    }

    func performAction() {
        print("viewModelButtonPressed")
        buttonModel.action()
    }
}

