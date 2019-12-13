//
//  ViewController.swift
//  DelegateChallenge
//
//  Created by Elan Kainen on 12/4/19.
//  Copyright © 2019 Elan Kainen. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var ZipField: UITextField!
    @IBOutlet weak var CashField: UITextField!
    @IBOutlet weak var SwitchField: UITextField!
    @IBOutlet weak var txtSwitch: UISwitch!
    
    let zipCodeDelegate = ZipCodeFieldDelegate()
    let cashTextDelegate = CashTextFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ZipField.delegate = zipCodeDelegate
        self.CashField.delegate = cashTextDelegate
        self.SwitchField.delegate = self
        self.txtSwitch.setOn(false, animated: false)
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {

        if !self.txtSwitch.isOn {
            if self.textFieldShouldEndEditing(textField) {
                textFieldDidEndEditing(textField)
            }
        }
        return true
    }

      func textFieldDidEndEditing(_ textField: UITextField) {
          textField.resignFirstResponder()
      }
    
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        return true
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if self.txtSwitch.isOn {
            return true
        }
        return false
    }

}

