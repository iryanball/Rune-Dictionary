//
//  InfoViewController.swift
//  Rune Dictionary
//
//  Created by Ryan Ball on 30/06/2017.
//  Copyright © 2017 Ryan Ball. All rights reserved.
//

import UIKit

class InfoViewController: UIViewController {

    @IBOutlet weak var infoText: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func viewDidAppear(_ animated: Bool) {
        self.infoText.scrollRangeToVisible(NSMakeRange(0, 0))
    }

}
