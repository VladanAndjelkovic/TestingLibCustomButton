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
//    var customButton = CustomButtonView.sel
    var customBcgrColor = CustomHexColor()
    var bckgrColor = UI_bck_color()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        view.backgroundColor = .blue
        let colorModel = ColorModel(hex: "#0000FF")
        let colorViewModel = ColorViewModel(colorModel: colorModel)
//        customBcgrColor.configure(with: colorViewModel)
        
        view.backgroundColor = customBcgrColor.configure(with: colorViewModel)
        
//        let log = Logger()
//        log.printLog()
        let model = ButtonModel( title: "UI_reusable_customButton", cornerRadius: 16,fontWeight: .light,  fontColor: .red, backgroundColor: .black, action: odstampajNesto)
        let btnVM = ButtonViewModel(buttonModel: model)
//        let customButton = CustomButton()
        customButton.configure(with: btnVM)
        customButton.frame = CGRect(x: 5, y: 100, width: UIScreen.main.bounds.size.width - 10, height: customButton.height!)
        

        view.addSubview(customButton)
        
        let cb2 = CustomButton2(title: "UI_reusable_customButton2", fontColor: .white, btnBackgroundColor: .magenta, cornerRadius: 16, superview: view)
        
        cb2.action22 = {
            print("vladanAndjelkovic actionCustomButton2")
        }
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) { [self] in
            cb2.btnBackgroundColor = .green
            cb2.fontColor = .black
            
            self.view.backgroundColor = bckgrColor.ui_bck_color(bck_color: "#BCBCBC")
        }
    }
    
   @objc func odstampajNesto() {
        print("vladanAndjelkovic actionCustomButton")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

