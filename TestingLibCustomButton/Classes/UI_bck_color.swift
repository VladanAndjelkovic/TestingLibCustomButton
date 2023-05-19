//
//  UI_bck_color.swift
//  TestingLibCustomButton
//
//  Created by Vladan  Andjelkovic on 19.5.23..
//

import UIKit

public class UI_bck_color {
    
    public init() {
    }
    
    public func ui_bck_color(bck_color: String) -> UIColor {
        convertHexToColor(hex: bck_color, alpha: 1.0) ?? convertHexToColor(hex: "#f8f8f8", alpha: 1.0)!
    }
    
//    var ui_bck_color: UIColor {
//        return convertHexToColor(hex: hex, alpha: 1.0) ?? convertHexToColor(hex: "#f8f8f8", alpha: 1.0)!
//    }
    
//    public init(bck_color: String,
//                            superview: UIView) {
//        superview.backgroundColor = ui_bck_color
//    }
    
    
//    public var btnBackgroundColor: UIColor = .yellow {
//        didSet {
//            self.backgroundColor = btnBackgroundColor
//        }
//    }
    
//    var UI_bck_color: UIColor {
//        return convertHexToColor(hex: hex, alpha: 1.0) ?? convertHexToColor(hex: "#f8f8f8", alpha: 1.0)!
//    }
    
//    public convenience init (bck_color: String) {
//        self.init(frame: .zero)
        
//        self.backgroundColor = convertHexToColor(hex: bck_color, alpha: 1.0) ?? convertHexToColor(hex: "#f8f8f8", alpha: 1.0)!
//    }
    
//    public override init(frame: CGRect) {
//          super.init(frame: frame)
//          self.fontColor = .clear
//  
//      }
  
//      public required init?(coder: NSCoder) {
//          fatalError("init(coder:) has not been implemented")
//      }
    
//    var ui_bck_color: UIColor {
//        return convertHexToColor(hex: colorModel.hex, alpha: 1.0) ?? convertHexToColor(hex: "#f8f8f8", alpha: 1.0)!
//    }
    

//    public var ui_BackgroundColor: UIColor = .yellow {
//        didSet {
//            self.backgroundColor = ui_BackgroundColor
//        }
//    }
//    
//        public init(hex: String) {
//            self.hex = hex
//        }
//    
//    public convenience init (bck_color: UIColor) {
////        self.init(frame: .zero)
//        self.backgroundColor = bck_color
//    }

    
//    public override init(frame: CGRect) {
////        self.fontColor = .clear
//        super.init(frame: frame)
//        self.fontColor = .clear
//
//    }
//
//    public required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
    
    //Pretvara HEX String u UIColor
    public  func convertHexToColor(hex:String, alpha: CGFloat?) -> UIColor? {
        
        if hex == "clear" {
            return .clear
        }
        
        let hexString: String = hex.trimmingCharacters(in: NSCharacterSet.whitespacesAndNewlines).uppercased()
        let scanner = Scanner(string: hexString)
        
        if (hexString.hasPrefix("#")) {
            scanner.scanLocation = 1
        }
        
        var color:UInt32 = 0
        scanner.scanHexInt32(&color)
        
        let mask = 0x000000FF
        
        var a: CGFloat? = nil
        var r = Int(color >> 16) & mask
        var g = Int(color >> 8) & mask
        var b = Int(color) & mask
        
        if hexString.count > 7
        {
            r = Int((color & 0xff000000) >> 24)
            g = Int((color & 0x00ff0000) >> 16)
            b = Int((color & 0x0000ff00) >> 8)
            a = CGFloat(color & 0x000000ff) / 255
        }
        
        let red   = CGFloat(r) / 255.0
        let green = CGFloat(g) / 255.0
        let blue  = CGFloat(b) / 255.0
        
        if a != nil
        {
            return UIColor(red: red, green: green, blue: blue, alpha: a!)
        }
        else if alpha == nil {
            return UIColor(red: red, green: green, blue: blue, alpha: 1)
        } else {
            return UIColor(red: red, green: green, blue: blue, alpha: alpha!)
        }
    }
}


