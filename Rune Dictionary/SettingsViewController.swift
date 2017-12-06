//
//  SettingsViewController.swift
//  Rune Dictionary
//
//  Created by Ryan Ball on 30/10/2017.
//  Copyright © 2017 Ryan Ball. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {
    
    var allowReversedRunes = true
    var allowDuplicateRunes = true
    
    @IBOutlet weak var allowReversedRunesSwitch: UISwitch!
    @IBOutlet weak var allowDuplicateRunesSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func reversedRunesChanged(_ sender: Any) {
        
        if allowReversedRunesSwitch.isOn {
            
            allowReversedRunes = true
            
        } else {
            allowReversedRunes = false
        }
        
    }
    
    @IBAction func duplicateRunesChanged(_ sender: Any) {
        
        if allowDuplicateRunesSwitch.isOn {
            
            allowDuplicateRunes = true
            
        } else {
            
            allowDuplicateRunes = false
            
        }
        
    }
    
}
