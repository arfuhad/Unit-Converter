//
//  ConverterTxtField.swift
//  Unit Converter
//
//  Created by Abdur Rahman on 8/8/20.
//  Copyright © 2020 Abdur Rahman. All rights reserved.
//

import UIKit

@IBDesignable
class ConverterTxtField: UITextField {

    /*
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
    }
    */
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
    }
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    
    func customizeView (){
        backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        layer.cornerRadius = 5.0
        textAlignment = .center
        clipsToBounds = true
        
        if let p = placeholder {
            let place = NSAttributedString(string: p, attributes: [.foregroundColor: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)])
            attributedPlaceholder = place
            textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
