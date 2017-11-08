//
//  BinaryView.swift
//  Number Converter
//
//  Created by Michael Papadopoulos on 3/6/16.
//  Copyright © 2016 Razzmatazz. All rights reserved.
//

import Cocoa

class DecimalView: NSViewController, NSTextFieldDelegate {

    @IBOutlet weak var decimalNumberText: NSTextField!
    
    @IBOutlet weak var toHexaLabel: NSTextField!
    
    @IBOutlet weak var toBinaryLabel: NSTextField!
    
    @IBOutlet weak var toOctalLabel: NSTextField!
    
    func convertNumber() {
        let binaryNumber = DecimalToBinary(Int(decimalNumberText.stringValue)!)
        toBinaryLabel.stringValue = binaryNumber
        
        toHexaLabel.stringValue = DecimalToHexa(Int(decimalNumberText.stringValue)!)
        
        toOctalLabel.stringValue = DecimalToOctal(Int(decimalNumberText.stringValue)!)
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do view setup here.
        
        decimalNumberText.delegate = self
    }
    
    override func controlTextDidChange(obj: NSNotification) {
        // Call your conversion functions here and display the result on label
        if obj.object as! NSTextField == decimalNumberText {
            self.convertNumber()
        }
    }
}
