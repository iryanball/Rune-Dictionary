//
//  SettingsViewController.swift
//  Rune Dictionary
//
//  Created by Ryan Ball on 30/10/2017.
//  Copyright © 2017 Ryan Ball. All rights reserved.
//

import UIKit

var selectedRunesArray = runesIncReversedArray

class SettingsViewController: UIViewController {
    
    @IBOutlet weak var allowReversedRunesLabel: UILabel!
    @IBOutlet weak var allowDuplicateRunesLabel: UILabel!
    @IBOutlet weak var nightModeLabel: UILabel!
    @IBOutlet weak var allowReversedRunesSwitch: UISwitch!
    @IBOutlet weak var allowDuplicateRunesSwitch: UISwitch!
    @IBOutlet weak var nightModeSwitch: UISwitch!
    
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        nightModeSwitch.isOn = false
        
        if let revRunes = defaults.value(forKey: "reversedRunes") {
            allowReversedRunesSwitch.isOn = revRunes as! Bool
        }
        
        if let dupRunes = defaults.value(forKey: "duplicateRunes") {
            allowDuplicateRunesSwitch.isOn = dupRunes as! Bool
        }
        
        if let nMode = defaults.value(forKey: "nightMode") {
            nightModeSwitch.isOn = nMode as! Bool
        }
        
    }
    
    @IBAction func reversedRunesChanged(_ sender: UISwitch) {
        
        defaults.set(sender.isOn, forKey: "reversedRunes")
        
        if allowReversedRunesSwitch.isOn == true {
            
            selectedRunesArray = runesIncReversedArray
            
        } else {
            selectedRunesArray = runesArray
        }
        
    }
    
    @IBAction func duplicateRunesChanged(_ sender: UISwitch) {
        
        defaults.set(sender.isOn, forKey: "duplicateRunes")
        
        if allowDuplicateRunesSwitch.isOn == true {
            
            
            
        } else {
            
            
            
        }
        
    }
    
    @IBAction func nightModeChanged(_ sender: UISwitch) {
        
        defaults.set(sender.isOn, forKey: "nightMode")
        
        if nightModeSwitch.isOn == true {
            
            self.navigationController?.navigationBar.isTranslucent = false
            self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.white]//user global variable
            self.navigationController?.navigationBar.barStyle = UIBarStyle.black //user global variable
            self.navigationController?.navigationBar.tintColor = UIColor.black //user global variable
            UIApplication.shared.statusBarStyle = .lightContent
            allowReversedRunesLabel.textColor = UIColor.white
            allowDuplicateRunesLabel.textColor = UIColor.white
            nightModeLabel.textColor = UIColor.white
            self.tabBarController?.tabBar.barTintColor = UIColor.black
            self.view.backgroundColor = UIColor.init(red: 0.1, green: 0.1, blue: 0.1, alpha: 1.0)
            
            
        } else {
            
            
            self.navigationController?.navigationBar.isTranslucent = false
            self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor: UIColor.black]//user global variable
            self.navigationController?.navigationBar.barStyle = UIBarStyle.default //user global variable
            self.navigationController?.navigationBar.tintColor = UIColor.white //user global variable
            UIApplication.shared.statusBarStyle = .default
            allowReversedRunesLabel.textColor = UIColor.black
            allowDuplicateRunesLabel.textColor = UIColor.black
            nightModeLabel.textColor = UIColor.black
            self.view.backgroundColor = UIColor.white
            self.tabBarController?.tabBar.barTintColor = UIColor.white
            
        }
        
    }
    
}

