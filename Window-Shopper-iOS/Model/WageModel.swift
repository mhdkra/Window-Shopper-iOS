//
//  WageModel.swift
//  Window-Shopper-iOS
//
//  Created by Tiara Mahardika on 28/12/18.
//  Copyright © 2018 Tiara Mahardika. All rights reserved.
//

import Foundation

class Wage {
    class func getHours(forWage wage: Double, andPrice price: Double) -> Int {
        return Int(ceil(price/wage))
    }
}
