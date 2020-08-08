//
//  ViewController.swift
//  Unit Converter
//
//  Created by Abdur Rahman on 8/8/20.
//  Copyright © 2020 Abdur Rahman. All rights reserved.
//

import UIKit

class MainController: UIViewController {

    @IBOutlet weak var converterTxt: UITextField!
    @IBOutlet weak var amountConverteTxt: UILabel!
    @IBOutlet weak var amntVeriableTxt: UILabel!
    
    @IBOutlet weak var typeSegOutlet: UISegmentedControl!
    @IBOutlet weak var unitSegOutlet: UISegmentedControl!
    
    var types = ["length","weight"]
    var lengthUnits = ["km","miles"]
    var weightUnits = ["kg","pounds"]
    
    
    var typ = ""
    var unit = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        typ = types[0]
        unit = lengthUnits[0]
        
        let calcBtn = UIButton(frame: CGRect(x: 0, y: 0, width: view.frame.size.width, height: 60))
        calcBtn.backgroundColor = #colorLiteral(red: 1, green: 0.5615011254, blue: 0, alpha: 1)
        calcBtn.setTitle("Calculate", for: .normal)
        calcBtn.setTitleColor(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0), for: .normal)
        calcBtn.addTarget(self, action: #selector(MainController.calculate), for: .touchUpInside)
        
        amountConverteTxt.isHidden = true
        amntVeriableTxt.isHidden = true
        
        converterTxt.inputAccessoryView = calcBtn
    }
    
    @IBAction func typeSegAction(_ sender: UISegmentedControl) {
        if typeSegOutlet.selectedSegmentIndex == 0 {
            typ = types[0]
            unitSegOutlet.setTitle("Km", forSegmentAt: 0)
            unitSegOutlet.setTitle("Miles", forSegmentAt: 1)
            if unitSegOutlet.selectedSegmentIndex == 0 {
                unit = lengthUnits[0]
            } else if unitSegOutlet.selectedSegmentIndex == 1 {
                unit = lengthUnits[1]
            }
        } else if typeSegOutlet.selectedSegmentIndex == 1 {
            typ = types[1]
            unitSegOutlet.setTitle("Kg", forSegmentAt: 0)
            unitSegOutlet.setTitle("Pounds", forSegmentAt: 1)
            if unitSegOutlet.selectedSegmentIndex == 0 {
                unit = weightUnits[0]
            } else if unitSegOutlet.selectedSegmentIndex == 1 {
                unit = weightUnits[1]
            }
        }
        amountConverteTxt.isHidden = true
        amntVeriableTxt.isHidden = true
        converterTxt.text = ""
    }
    
    @IBAction func unitSegAction(_ sender: UISegmentedControl) {
        if typ == types[0] {
            unitSegOutlet.setTitle("Km", forSegmentAt: 0)
            unitSegOutlet.setTitle("Miles", forSegmentAt: 1)
            if unitSegOutlet.selectedSegmentIndex == 0 {
                unit = lengthUnits[0]
            } else if unitSegOutlet.selectedSegmentIndex == 1 {
                unit = lengthUnits[1]
            }
        } else if typ == types[1] {
            unitSegOutlet.setTitle("Kg", forSegmentAt: 0)
            unitSegOutlet.setTitle("Pounds", forSegmentAt: 1)
            if unitSegOutlet.selectedSegmentIndex == 0 {
                unit = weightUnits[0]
            } else if unitSegOutlet.selectedSegmentIndex == 1 {
                unit = weightUnits[1]
            }
        }
        calculate()
    }
    
    @objc func calculate() {
        if let converterTxt = converterTxt.text {
            if let converter = Double(converterTxt) {
                view.endEditing(true)
                var result = 0.0
                if typ == types[0] {
                    result = Converter.getLength(ConvertingAmount: converter, ConvertingType: unit)
                } else if typ == types[1] {
                    result = Converter.getWeight(ConvertingAmount: converter, ConvertingType: unit)
                }
                
                amountConverteTxt.text = "\(result)"
                if typ == types[0] {
                    if unit == lengthUnits [1] {
                        amntVeriableTxt.text = "Kilometers"
                    } else {
                        amntVeriableTxt.text = "Miles"
                    }
                } else {
                    if unit == weightUnits[1] {
                        amntVeriableTxt.text = "Kilograms"
                    } else{
                        amntVeriableTxt.text = "Pounds"
                    }
                }

                amountConverteTxt.isHidden = false
                amntVeriableTxt.isHidden = false
            }
        }
    }
}

