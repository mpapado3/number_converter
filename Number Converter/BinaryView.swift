//
//  BinaryView.swift
//  Number Converter
//
//  Created by Michael Papadopoulos on 4/6/16.
//  Copyright © 2016 Razzmatazz. All rights reserved.
//

import Cocoa

class BinaryView: NSViewController, NSTextFieldDelegate {

    @IBOutlet weak var decimalNumberLabel: NSTextField!
    @IBOutlet weak var hexaNumberLabel: NSTextField!
    @IBOutlet weak var octalNumberLabel: NSTextField!
    @IBOutlet weak var binaryNumberText: NSTextField!
    
    func convertNumber() {
        
        decimalNumberLabel.stringValue = String(BinaryToDecimal((Int(binaryNumberText.stringValue)!)))
        
        let decimalNumber = String(BinaryToDecimal((Int(binaryNumberText.stringValue)!)))
        
        hexaNumberLabel.stringValue = String(DecimalToHexa(Int(decimalNumber)!))
        
        octalNumberLabel.stringValue = String(DecimalToOctal(Int(decimalNumber)!))
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do view setup here.
        
        binaryNumberText.delegate = self
    }
    
    override func controlTextDidChange(obj: NSNotification) {
        // Call your conversion functions here and display the result on label
        if obj.object as! NSTextField == binaryNumberText {
            self.convertNumber()
        }
    }
    
}
