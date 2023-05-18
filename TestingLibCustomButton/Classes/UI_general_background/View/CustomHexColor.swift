//
//  CustomHexColor.swift
//  TestingLibCustomButton
//
//  Created by Vladan  Andjelkovic on 17.5.23..
//

import UIKit

public class CustomHexColor: UIColor {
    private var viewModel: ColorViewModel?    
    
    public func configure(with viewModel: ColorViewModel) -> UIColor {
        self.viewModel = viewModel
        return viewModel.hex
        
    }
}
