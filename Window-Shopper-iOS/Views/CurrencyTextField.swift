//
//  CurrencyTextField.swift
//  Window-Shopper-iOS
//
//  Created by Tiara Mahardika on 28/12/18.
//  Copyright © 2018 Tiara Mahardika. All rights reserved.
//

import UIKit
@IBDesignable
class CurrencyTextField: UITextField {
    
    override func draw(_ rect: CGRect) {
        let size: CGFloat = 20
        let currencyLabel = UILabel(frame: CGRect(x: 5, y: (frame.size.height / 2) - size / 2, width: size, height: size))
        currencyLabel.backgroundColor = #colorLiteral(red: 0.781099853, green: 0.8457138801, blue: 0.9395820114, alpha: 0.8)
        currencyLabel.textAlignment = .center
        currencyLabel.textColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        clipsToBounds = true
        currencyLabel.layer.cornerRadius = 5.0
        let formatter = NumberFormatter()
        formatter.locale = .current
        formatter.numberStyle = .currency
        currencyLabel.text = formatter.currencySymbol
        addSubview(currencyLabel)
    }
    
    
    override func prepareForInterfaceBuilder() {
        customizeView()
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        customizeView()
        
        }
        
        func customizeView() {
            backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0.2480201199)
            layer.cornerRadius = 5.0
            textAlignment = .center
            clipsToBounds = true
            
            if let p =  placeholder {
                let place = NSAttributedString (string: p , attributes: [.foregroundColor: #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)])
                attributedPlaceholder = place
                textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
    }

}
