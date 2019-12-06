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
    @IBOutlet weak var MoneyField: UITextField!
    @IBOutlet weak var SwitchField: UITextField!
    
    let zipCodeDelegate = ZipCodeFieldDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.ZipField.delegate = zipCodeDelegate
    }


}

