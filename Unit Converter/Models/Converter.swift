//
//  Converter.swift
//  Unit Converter
//
//  Created by Abdur Rahman on 8/8/20.
//  Copyright © 2020 Abdur Rahman. All rights reserved.
//

import Foundation

class Converter {
    class func getLength(ConvertingAmount amount: Double, ConvertingType type: String) -> Double {
        if type == "km"{
            return (amount * 0.621371)
        }else{
            return (amount * 1.60934)
        }
    }
    class func getWeight(ConvertingAmount amount: Double, ConvertingType type: String) -> Double {
        if type == "kg"{
            return (amount * 2.20462)
        }else{
            return (amount * 0.453592)
        }
    }
}
