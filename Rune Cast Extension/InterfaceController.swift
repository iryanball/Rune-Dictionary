//
//  InterfaceController.swift
//  Rune Cast Extension
//
//  Created by Ryan Ball on 11/07/2017.
//  Copyright © 2017 Ryan Ball. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    let runeArray = [UIImage(named: ("Fehu.png"))!,UIImage(named: ("FehuReversed.png"))!,UIImage(named: ("Uruz.png"))!,UIImage(named: ("UruzReversed.png"))!,UIImage(named: ("Thurisaz.png"))!,UIImage(named: ("ThurisazReversed.png"))!,UIImage(named: ("Ansuz.png"))!,UIImage(named: ("AnsuzReversed.png"))!,UIImage(named: ("Raidho.png"))!,UIImage(named: ("RaidhoReversed.png"))!,UIImage(named: ("Kenaz.png"))!,UIImage(named: ("KenazReversed.png"))!,UIImage(named: ("Gebo.png"))!,UIImage(named: ("Wunjo.png"))!,UIImage(named: ("WunjoReversed.png"))!,UIImage(named: ("Hagalaz.png"))!,UIImage(named: ("Nauthiz.png"))!,UIImage(named: ("Isa.png"))!,UIImage(named: ("Jera.png"))!,UIImage(named: ("Eihwaz.png"))!,UIImage(named: ("Perthro.png"))!,UIImage(named: ("PerthroReversed.png"))!,UIImage(named: ("Algiz.png"))!,UIImage(named: ("AlgizReversed.png"))!,UIImage(named: ("Sowilo.png"))!,UIImage(named: ("Tiwaz.png"))!,UIImage(named: ("TiwazReversed.png"))!,UIImage(named: ("Berkano.png"))!,UIImage(named: ("BerkanoReversed.png"))!,UIImage(named: ("Ehwaz.png"))!,UIImage(named: ("EhwazReversed.png"))!,UIImage(named: ("Mannaz.png"))!,UIImage(named: ("MannazReversed.png"))!,UIImage(named: ("Laguz.png"))!,UIImage(named: ("LaguzReversed.png"))!,UIImage(named: ("Ingwaz.png"))!,UIImage(named: ("Dagaz.png"))!,UIImage(named: ("Othala.png"))!,UIImage(named: ("OthalaReversed.png"))!,UIImage(named: ("Blank.png"))!]

    @IBOutlet var runeImage: WKInterfaceImage!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func runeCastButton() {
        
        let randomRune = runeArray[Int(arc4random_uniform(UInt32(runeArray.count)))]
        runeImage.setImage(randomRune)
    }
}
