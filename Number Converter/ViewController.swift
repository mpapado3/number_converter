//
//  ViewController.swift
//  Number Converter
//
//  Created by Michael Papadopoulos on 22/5/16.
//  Copyright © 2016 Razzmatazz. All rights reserved.
//

import Cocoa

public func DecimalToBinary(number: Int) -> String {
    
    var i = 0
    var resultTable: [Int] = []
   // var reverseTable: [Int] = []
    var tempNumber: Int
    var resultNumber: Int
    
    resultNumber = number
    
    if resultNumber != 0 {
    
        while ( resultNumber / 2 != 0) {
        
            tempNumber = resultNumber % 2
        
            resultTable.append(tempNumber)
            resultNumber = resultNumber / 2
            i += 1
        
        }
        resultTable.append(1)

    } else {
        resultTable.append(0)
    }
    
    /*reverseTable = resultTable.reverse()
    
    let k = reverseTable.count
    var bitcount: Int = 1
    var returnNumber = String()
    for (var y = 0; y<k; y += 1) {
        returnNumber += String(reverseTable[y])
        if (bitcount==4) {
            returnNumber += String(" ")
            bitcount=0
        }
        bitcount += 1
    }
    
    return String(returnNumber) */
    
    let k = resultTable.count
    var bitcount: Int = 1
    var returnNumber = String()
    for (var y = 0; y<k; y += 1) {
        returnNumber += String(resultTable[y])
        if (bitcount==4) {
            returnNumber += String(" ")
            bitcount=0
        }
        bitcount += 1
    }

    return String(returnNumber.characters.reverse())


}

public func DecimalToHexa (runningNumber: Int) -> String {
    var hexaArray: [String] = []
    var hexaArrayInOrder: [String] = []
    // var runningNumber: Int = 0 Σε περίπτωση που δεν λειτουργεί το πάνω το κάνουμε δοκιμαστικά
    var tempNumber: Int = 0
    var i = 0
    var resultNumber: Int = Int(runningNumber)
    // runningNumber = numberText.stringValue Επίσης και εδώ σε περίπτωση που δεν μπορεί να περάσει
    if (resultNumber != 0) {
        while (resultNumber != 0) {
            tempNumber = resultNumber % 16
            switch tempNumber {
            case 10:
                hexaArray.append("A")
            case 11:
                hexaArray.append("B")
            case 12:
                hexaArray.append("C")
            case 13:
                hexaArray.append("D")
            case 14:
                hexaArray.append("E")
            case 15:
                hexaArray.append("F")
            default:
                hexaArray.append(String(tempNumber))
            }
            resultNumber = resultNumber / 16
            i += 1
        }
    } else {
        hexaArray.append(String(0))
    }
    hexaArrayInOrder = hexaArray.reverse()
    
    let k = hexaArrayInOrder.count
    var returnNumber = String()
    for (var y = 0; y<k; y += 1) {
        returnNumber += hexaArrayInOrder[y]

    }
    
    return String(returnNumber)
}

public func DecimalToOctal (number: Int) -> String{
    var octalNumber: Int = number
    var octalArray: [Int] = []
    var octalArrayInOrder: [Int]
    var tempNumber: Int = 0
    var i = 0
    if (octalNumber != 0) {
        while (octalNumber != 0) {
            tempNumber = octalNumber % 8
            octalArray.append(tempNumber)
            octalNumber = octalNumber / 8
            i += 1
        }
    } else {
        octalArray.append(0)
    }
    octalArrayInOrder = octalArray.reverse()
    
    let k = octalArrayInOrder.count
    // var bitcount: Int = 1
    var returnNumber = String()
    for (var y = 0; y<k; y += 1) {
        returnNumber += String(octalArrayInOrder[y])
        /* if (bitcount==4) {
            returnNumber += String(" ")
            bitcount=0
        }
        bitcount += 1 */
    }    
    return returnNumber
}

infix operator ** {}
func ** (num: Int, power: Int) -> Int {
    return Int(pow(Double(num), Double(power)))
}

public func BinaryToDecimal(number: Int) -> Int {
    var decimal: Int = 0
    var tempNumber: Int = number
    var i: Int = 0
    while (tempNumber != 0) {
        decimal += (tempNumber % 10) * (2 ** i)
        tempNumber = tempNumber / 10
        i += 1
    }
    
    return decimal
}

public func HexaToDecimal(number: String) -> Int {
    var decimal: Int = 0
    // var hexaCheck: String
    // let tempNumber = Array(number.characters)
    var i: Int = 0
    
    for numbers in number.characters.reverse() {
        switch numbers {
            case "A", "a":
                decimal += 10 * (16 ** i)
                i += 1
            case "B", "b":
                decimal += 11 * (16 ** i)
                i += 1
            case "C", "c":
                decimal += 12 * (16 ** i)
                i += 1
            case "D", "d":
                decimal += 13 * (16 ** i)
                i += 1
            case "E", "d":
                decimal += 14 * (16 ** i)
                i += 1
            case "F", "f":
                decimal += 15 * (16 ** i)
                i += 1
            default:
                let hexaCheck = String(numbers)
                if let tempNumber = Int(hexaCheck) {
                decimal += Int(tempNumber) * (16 ** i)
                i += 1
            }
            
        }
        
        
    }
    /* while (Int(tempNumber) != 0) {
        hexaCheck = Int(tempNumber)! % 10
        decimal += (tempNumber % 10) * (16 ** i)
        tempNumber = tempNumber / 10
        i += 1
    } */
    
    return decimal
}

class ViewController: NSViewController {

    
        override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }

    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }


}

