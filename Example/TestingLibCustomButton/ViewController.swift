//
//  ViewController.swift
//  TestingLibCustomButton
//
//  Created by VladanAndjelkovic on 05/16/2023.
//  Copyright (c) 2023 VladanAndjelkovic. All rights reserved.
//

import UIKit
import TestingLibCustomButton

class ViewController: UIViewController {
    var customButton = CustomButton()
    var customBcgrColor = CustomHexColor()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let colorModel = ColorModel(hex: "#0000FF")
        let colorViewModel = ColorViewModel(colorModel: colorModel)
        view.backgroundColor = customBcgrColor.configure(with: colorViewModel)
        
        let model = ButtonModel( title: "UI_reusable_customButton", cornerRadius: 16,fontWeight: .light,  fontColor: .blue, backgroundColor: .white, action: odstampajNesto)
        let btnVM = ButtonViewModel(buttonModel: model)
        customButton.configure(with: btnVM)
        customButton.frame = CGRect(x: 5, y: 100, width: UIScreen.main.bounds.size.width - 10, height: customButton.height!)
        

        view.addSubview(customButton)
        
        let cb2 = UI_primary_button(title: "UI_reusable_customButton2", fontColor: .white, btnBackgroundColor: .magenta, cornerRadius: 16, superview: view)
        
        cb2.setImage(UIImage(named:"dashboard_help_icon"), for: .normal)
        cb2.action22 = {
            print("vladanAndjelkovic actionCustomButton2")
        }
        
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
//            cb2.btnBackgroundColor = .green
//            cb2.fontColor = .black
//            
            self.view.backgroundColor = UI_bck_color().ui_bck_color(bck_color: "#BCBCBC")
//        }
    }
    
   @objc func odstampajNesto() {
        print("vladanAndjelkovic actionCustomButton")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

