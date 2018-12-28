//
//  ViewController.swift
//  Window-Shopper-iOS
//
//  Created by Tiara Mahardika on 28/12/18.
//  Copyright © 2018 Tiara Mahardika. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    @IBOutlet weak var wageTextField: CurrencyTextField!
    @IBOutlet weak var itemPriceTextField: CurrencyTextField!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var hourLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60 ))
        calcButton.backgroundColor = #colorLiteral(red: 0.9753529505, green: 0.5658278359, blue: 0.01254919911, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        resultLabel.isHidden = true
        hourLabel.isHidden = true
        
        
        wageTextField.inputAccessoryView = calcButton
        itemPriceTextField.inputAccessoryView = calcButton
    }
    @objc func calculate(){
        if let wageText = wageTextField.text,
            let priceText = itemPriceTextField.text {
            if let wage = Double(wageText), let price = Double(priceText){
                view.endEditing(true)
                resultLabel.isHidden = false
                hourLabel.isHidden = false
                
                resultLabel.text = "\(Wage.getHours(forWage: wage, andPrice: price))"
            }
        }
        
    }

    @IBAction func clearCalculatorPressed(_ sender: Any) {
        resultLabel.isHidden = true
        hourLabel.isHidden = true
        wageTextField.text = ""
        itemPriceTextField.text = ""
        
    }
    
    
}

