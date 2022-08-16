//
//  main.swift
//  RomanNumeralsCalculator
//
//  Created by Simeon on 29.07.22.
//

import Foundation


struct RomanCalculator {

    
   /* mutating func convertToAdditive(_ romanNumber1: String, _ romanNumber2: String) -> (String, String) {
        
        num1 = romanNumber1
        num2 = romanNumber2
        
        num1 = num1.replacingOccurrences(of: "IV", with: "IIII")
        num1 = num1.replacingOccurrences(of: "IX", with: "VIIII")
        num1 = num1.replacingOccurrences(of: "XL", with: "XXXX")
        num1 = num1.replacingOccurrences(of: "XC", with: "LXXXX")
        num1 = num1.replacingOccurrences(of: "CD", with: "CCCC")
        num1 = num1.replacingOccurrences(of: "CM", with: "DCCCC")
        
        //return result
        
        num2 = num2.replacingOccurrences(of: "IV", with: "IIII")
        num2 = num2.replacingOccurrences(of: "IX", with: "VIIII")
        num2 = num2.replacingOccurrences(of: "XL", with: "XXXX")
        num2 = num2.replacingOccurrences(of: "XC", with: "LXXXX")
        num2 = num2.replacingOccurrences(of: "CD", with: "CCCC")
        num2 = num2.replacingOccurrences(of: "CM", with: "DCCCC")
        
        return (num1, num2)
    } */
    func toAdditive(romanNumber: String) -> String {
        var romanNumber = romanNumber
        
        if romanNumber.contains("IV") {
            romanNumber = romanNumber.replacingOccurrences(of: "IV", with: "IIII")
        } else if romanNumber.contains("IX") {
            romanNumber = romanNumber.replacingOccurrences(of: "IX", with: "VIIII")
        } else if romanNumber.contains("XL") {
            romanNumber = romanNumber.replacingOccurrences(of: "XL", with: "XXXX")
        } else if romanNumber.contains("XC") {
            romanNumber = romanNumber.replacingOccurrences(of: "XC", with: "LXXXX")
        } else if romanNumber.contains("CD") {
            romanNumber = romanNumber.replacingOccurrences(of: "CD", with: "CCCC")
        } else if romanNumber.contains("CM") {
            romanNumber = romanNumber.replacingOccurrences(of: "CM", with: "DCCCC")
        }
        return romanNumber
    }

   
    
     func sortRomanNumbers(sumNumbers: String) -> String {
        
        var mCounter = 0
        var dCounter = 0
        var cCounter = 0
        var lCounter = 0
        var xCounter = 0
        var vCounter = 0
        var iCounter = 0
        for char in sumNumbers {
            if char == "M" {
                mCounter += 1
            } else if char == "D" {
                dCounter += 1
            } else if char == "C" {
                cCounter += 1
            } else if char == "L" {
                lCounter += 1
            } else if char == "X" {
                xCounter += 1
            } else if char == "V" {
                vCounter += 1
            } else if char == "I" {
                iCounter += 1
            }
        }
        
        var sumNumbers = sumNumbers
        sumNumbers = ""
        for _ in 0..<mCounter {
            sumNumbers += "M"
        }
        for _ in 0..<dCounter {
            sumNumbers += "D"
        }
        for _ in 0..<cCounter {
            sumNumbers += "C"
        }
        for _ in 0..<lCounter {
            sumNumbers += "L"
        }
        for _ in 0..<xCounter {
            sumNumbers += "X"
        }
        for _ in 0..<vCounter {
            sumNumbers += "V"
        }
        for _ in 0..<iCounter {
            sumNumbers += "I"
        }
        return sumNumbers
    }
    
     func convertToSubstractive(literalToSubstractive: String) -> String {
        var literalToSubstractive = literalToSubstractive
        
        literalToSubstractive = literalToSubstractive.replacingOccurrences(of: "IIII", with: "IV")
        literalToSubstractive = literalToSubstractive.replacingOccurrences(of: "VIIII", with: "IX")
        literalToSubstractive = literalToSubstractive.replacingOccurrences(of: "XXXX", with: "XL")
        literalToSubstractive = literalToSubstractive.replacingOccurrences(of: "XLX", with: "L")
        literalToSubstractive = literalToSubstractive.replacingOccurrences(of: "XLXX", with: "LX")
        literalToSubstractive = literalToSubstractive.replacingOccurrences(of: "XLXXX", with: "LXX")
        literalToSubstractive = literalToSubstractive.replacingOccurrences(of: "XLXXXX", with: "LXXX")
        literalToSubstractive = literalToSubstractive.replacingOccurrences(of: "XLXXXXX", with: "XC")
        literalToSubstractive = literalToSubstractive.replacingOccurrences(of: "LXXXX", with: "XC")
        literalToSubstractive = literalToSubstractive.replacingOccurrences(of: "LXL", with: "XC")
        literalToSubstractive = literalToSubstractive.replacingOccurrences(of: "LL", with: "C") //here
        literalToSubstractive = literalToSubstractive.replacingOccurrences(of: "CCCCC", with: "D") //here
        literalToSubstractive = literalToSubstractive.replacingOccurrences(of: "CCCC", with: "CD")
        literalToSubstractive = literalToSubstractive.replacingOccurrences(of: "DCCCC", with: "CM")
        
        return literalToSubstractive
    }
    
     func simplifyFromRightToLeft(simplifiedResult: String) -> String {
        var simplifiedResult = simplifiedResult
     
        simplifiedResult = simplifiedResult.replacingOccurrences(of: "IIIII", with: "V")
        simplifiedResult = simplifiedResult.replacingOccurrences(of: "VV", with: "X")
        simplifiedResult = simplifiedResult.replacingOccurrences(of: "XXXX", with: "XL")
        simplifiedResult = simplifiedResult.replacingOccurrences(of: "XXXXX", with: "L")
        simplifiedResult = simplifiedResult.replacingOccurrences(of: "LL", with: "C")
        simplifiedResult = simplifiedResult.replacingOccurrences(of: "CCCC", with: "CD")
        

        return simplifiedResult
    }

   
     func eliminateCommonSymbols(eliminatedNum1: String, eliminatedNum2: String) -> (String,String) {

        var eliminatedNum1 = eliminatedNum1
        var eliminatedNum2 = eliminatedNum2
        
        for char1 in eliminatedNum1 {
            for char2 in eliminatedNum2 {
                if char1 == char2 {
                    if let index1 = eliminatedNum1.lastIndex(of: char1),
                       let index2 = eliminatedNum2.lastIndex(of: char2) {
                        eliminatedNum1.remove(at: index1)
                        eliminatedNum2.remove(at: index2)
                         
                    }
                }
            }
        }
        return (eliminatedNum1, eliminatedNum2)
    }
    
    
//    mutating func expandNumber() -> String {
//        /*
//         I = 1, V = 5, X = 10, L = 50, C = 100, D = 500, M = 1000
//         XL = 40
//         XC = 90
//         CD = 400
//         CM = 900 */
//
//        if num1 == "M" {
//            return "DCCCCLXXXXVIIIII"
//        }
//        if num1 == "D" {
//            return "CCCCLXXXXVIIIII"
//        }
//        if num1 == "C" {
//            return "LXXXXVIIIII"
//        }
//        if num1 == "L" {
//            return "XXXXVIIIII"
//        }
//        if num1 == "X" {
//            return "VIIIII"
//        }
//        if num1 == "V" {
//            return "IIIII"
//        }
//        return num1
//    }
    
     func checkWhichCharacterToExpand(checkNumber1: String, checkNumber2: String) -> String {

        var checkNumber1 = checkNumber1
        
        
        if checkNumber2.contains("I") {
            checkNumber1 = checkNumber1.replacingOccurrences(of: "V", with: "IIIII")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "X", with: "VIIIII")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "L", with: "XXXXVIIIII")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "C", with: "LXXXXVIIIII")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "D", with: "CCCCLXXXXVIIIII")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "M", with: "DCCCCLXXXXVIIIII")
        }
        if checkNumber2.contains("V") {
            checkNumber1 = checkNumber1.replacingOccurrences(of: "X", with: "VV")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "L", with: "XVVVVVVVV")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "C", with: "LXVVVVVVVV")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "D", with: "CCCCLXVVVVVVVV")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "M", with: "DCCCCLXVVVVVVVV")
        }
        if checkNumber2.contains("X") {
            checkNumber1 = checkNumber1.replacingOccurrences(of: "L", with: "XXXXX")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "C", with: "LXXXXX")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "D", with: "CCCCLXXXXX")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "M", with: "DCCCCLXXXXX")
        }
        if checkNumber2.contains("L") {
            checkNumber1 = checkNumber1.replacingOccurrences(of: "C", with: "LL")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "D", with: "CCCCLL")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "M", with: "DCCCCLL")
        }
        if checkNumber2.contains("C") {
            checkNumber1 = checkNumber1.replacingOccurrences(of: "D", with: "CCCCC")
            checkNumber1 = checkNumber1.replacingOccurrences(of: "M", with: "DCCCCC")
        }
        if checkNumber2.contains("D") {
            checkNumber1 = checkNumber1.replacingOccurrences(of: "M", with: "DD")
        }
        return checkNumber1
    }
            
    func addNumbers(num1: String, num2: String) -> String {
        var result = ""
        
        let additive1 = toAdditive(romanNumber: num1)
        let additive2 = toAdditive(romanNumber: num2)
        result = additive1 + additive2
        let sorted = sortRomanNumbers(sumNumbers: result)
        let simplified = simplifyFromRightToLeft(simplifiedResult: sorted)
        let converted = convertToSubstractive(literalToSubstractive: simplified)
        
        return converted
    }
    
     func subtractNumbers(num1: String, num2: String) -> String {
         
         //цикъл за експанд и елиминейт, да скрия функциите от публиката
        
        let additive1 = toAdditive(romanNumber: num1)
        let additive2 = toAdditive(romanNumber: num2)
        let elimNum1AndNum2 = eliminateCommonSymbols(eliminatedNum1: additive1, eliminatedNum2: additive2)
        let elimNum1 = elimNum1AndNum2.0
        let elimNum2 = elimNum1AndNum2.1
        let expandedNum1 = checkWhichCharacterToExpand(checkNumber1: elimNum1, checkNumber2: elimNum2)
        let moreEliminated = eliminateCommonSymbols(eliminatedNum1: expandedNum1, eliminatedNum2: elimNum2)
        let moreElim1 = moreEliminated.0
        let moreElim2 = moreEliminated.1
        let moreExpandedNum1 = checkWhichCharacterToExpand(checkNumber1: moreElim1, checkNumber2: moreElim2)
        let finalElimination = eliminateCommonSymbols(eliminatedNum1: moreExpandedNum1, eliminatedNum2: moreElim2)
        let finalNum1 = finalElimination.0

        let finalNumSorted = sortRomanNumbers(sumNumbers: finalNum1)
        let finalNumSimplified = simplifyFromRightToLeft(simplifiedResult: finalNumSorted)
        let finalNumConverted = convertToSubstractive(literalToSubstractive: finalNumSimplified)
        
        
        return finalNumConverted
    }
}

//var adding = RomanCalculator()
//print(adding.addNumbers(num1: "DCCXXVI", num2: "XLVIII"))


var substracting = RomanCalculator()
print(substracting.subtractNumbers(num1: "LXXII", num2: "XI"))


