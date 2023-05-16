//
//  ViewController.swift
//  TestingLibCustomButton
//
//  Created by VladanAndjelkovic on 05/16/2023.
//  Copyright (c) 2023 VladanAndjelkovic. All rights reserved.
//

import UIKit
//import TestingLibCustomButton

class ViewController: UIViewController {


    @IBOutlet weak var customButton: CustomButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//        let btn = CustomButton()
        view.backgroundColor = .blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

