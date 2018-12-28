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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let calcButton = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60 ))
        calcButton.backgroundColor = #colorLiteral(red: 0.9753529505, green: 0.5658278359, blue: 0.01254919911, alpha: 1)
        calcButton.setTitle("Calculate", for: .normal)
        calcButton.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcButton.addTarget(self, action: #selector(MainVC.calculate), for: .touchUpInside)
        
        wageTextField.inputAccessoryView = calcButton
        itemPriceTextField.inputAccessoryView = calcButton
    }
    @objc func calculate(){
        print("we got you")
        
    }


    
}

