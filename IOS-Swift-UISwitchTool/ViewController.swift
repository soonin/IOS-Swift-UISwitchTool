//
//  ViewController.swift
//  IOS-Swift-UISwitchTool
//
//  Created by Pooya on 2018-09-05.
//  Copyright © 2018 Pooya. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stateSwitch: UISwitch!
    @IBOutlet weak var textField : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        stateSwitch.addTarget(self, action: #selector(stateChanged), for: UIControlEvents.valueChanged)
    }

    @IBAction func buttonTaped(_ sender: Any) {
        if stateSwitch.isOn {
            textField.text = "The Switch is Off"
            stateSwitch.setOn(false, animated: true)
        } else {
            textField.text = "The Switch is On"
            stateSwitch.setOn(true, animated: true)
        }
    }

    @objc func stateChanged(switchState: UISwitch) {
        if switchState.isOn {
            textField.text = "The Switch is On"
        } else {
            textField.text = "The Switch is Off"
        }
    }



}

