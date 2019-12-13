//
//  ZipCodeFieldDelegate.swift
//  DelegateChallenge
//
//  Created by Elan Kainen on 12/4/19.
//  Copyright © 2019 Elan Kainen. All rights reserved.
//

import Foundation
import UIKit

class ZipCodeFieldDelegate: NSObject, UITextFieldDelegate {
    
    //5 num limit doesnt work and keyboard not popping up
    //maybe use a number dictionary
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        
        let currentCharacterCount = textField.text?.count ?? 0
        if range.length + range.location > currentCharacterCount {
            return false
        }
        let newLength = currentCharacterCount + string.count - range.length
        return newLength <= 5
//
//        // Construct the text that will be in the field if this change is accepted
//        var newText = textField.text! as NSString
//        newText = newText.replacingCharacters(in: range, with: string) as NSString
//
//        //End editing if text field hits a length of 5
////        if newText.length == 5 {
////            textFieldShouldEndEditing(newText)
////        }
//        return true
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        textField.becomeFirstResponder()
        textField.text = ""
    }
    
    func textFieldDidEndEditing(_ textField: UITextField) {
        textField.resignFirstResponder()
    }
    
    
    
//    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
//         if textField.text!.count == 5 {
//                   return false
//               }
//        return true
//    }

//    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
//        if textField.text!.count == 5 {
//            return true
//        }
//        return false
//    }

}
