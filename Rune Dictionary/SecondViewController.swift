//
//  SecondViewController.swift
//  Rune Dictionary
//
//  Created by Ryan Ball on 24/06/2017.
//  Copyright © 2017 Ryan Ball. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var selectedRune: Rune!

    @IBOutlet weak var runeNameLabel: UILabel!
    @IBOutlet weak var runeImage: UIImageView!
    @IBOutlet weak var runeDescriptionLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        runeNameLabel.text = selectedRune.runeName
        runeImage.image = selectedRune.runeImage
        runeDescriptionLabel.text = selectedRune.runeDescription
    }
    
}
