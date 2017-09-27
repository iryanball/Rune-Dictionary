//
//  CastingViewController.swift
//  Rune Dictionary
//
//  Created by Ryan Ball on 30/06/2017.
//  Copyright © 2017 Ryan Ball. All rights reserved.
//

import UIKit

class CastingViewController: UIViewController {
    
    let runesArray = [Rune(runeName: "Fehu", runeImage: UIImage(named: ("Fehu.png"))!, runeDescription: "(F: Domestic cattle, wealth.) Possessions won or earned, earned income, luck. Abundance, financial strength in the present or near future. Sign of hope and plenty, success and happiness. Social success. Energy, foresight, fertility, creation/destruction (becoming).\n\n Fehu Reversed or Merkstave: Loss of personal property, esteem, or something that you put in effort to keep. It indicates some sort of failure. Greed, burnout, atrophy, discord. Cowardice, stupidity, dullness, poverty, slavery, bondage."),
                      Rune(runeName: "Uruz", runeImage: UIImage(named: ("Uruz.png"))!, runeDescription: "(U: Auroch, a wild ox.) Physical strength and speed, untamed potential. A time of great energy and health. Freedom, energy, action, courage, strength, tenacity, understanding, wisdom. Sudden or unexpected changes (usually for the better). Sexual desire, masculine potency. The shaping of power and pattern, formulation of the self.\n\n Uruz Reversed or Merkstave: Weakness, obsession, misdirected force, domination by others. Sickness, inconsistency, ignorance. Lust, brutality, rashness, callousness, violence."),
                      Rune(runeName: "Thurisaz", runeImage: UIImage(named: ("Thurisaz.png"))!, runeDescription: "(TH: Thorn or a Giant.) Reactive force, directed force of destruction and defense, conflict. Instinctual will, vital eroticism, regenerative catalyst. A tendency toward change. Catharsis, purging, cleansing fire. Male sexuality, fertilization. (Thorr, the Thunder god, was of Giant stock.)\n\n Thurisaz Reversed or Merkstave: Danger, defenselessness, compulsion, betrayal, dullness. Evil, malice, hatred, torment, spite, lies. A bad man or woman. Rape?"),
                      Rune(runeName: "Ansuz", runeImage: UIImage(named: ("Ansuz.png"))!, runeDescription: "(A: The As, ancestral god, i.e. Odin.) A revealing message or insight, communication. Signals, inspiration, enthusiasm, speech, true vision, power of words and naming. Blessings, the taking of advice. Good health, harmony, truth, wisdom.\n\n Ansuz Reversed or Merkstave: Misunderstanding, delusion, manipulation by others, boredom. Vanity and grandiloquence. (Odin is a mighty, but duplicitous god. He always has his own agenda.)"),
                      Rune(runeName: "Raidho", runeImage: UIImage(named: ("Raidho.png"))!, runeDescription: "(R: Wagon or chariot.) Travel, both in physical terms and those of lifestyle direction. A journey, vacation, relocation, evolution, change of place or setting. Seeing a larger perspective. Seeing the right move for you to make and deciding upon it. Personal rhythm, world rhythm, dance of life.\n\n Raidho Reversed or Merkstave: Crisis, rigidity, stasis, injustice, irrationality. Disruption, dislocation, demotion, delusion, possibly a death."),
                      Rune(runeName: "Kenaz", runeImage: UIImage(named: ("Kenaz.png"))!, runeDescription: "(K: Beacon or torch.) Vision, revelation, knowledge, creativity, inspiration, technical ability. Vital fire of life, harnessed power, fire of transformation and regeneration. Power to create your own reality, the power of light. Open to new strength, energy, and power now. Passion, sexual love.\n\n Kenaz Reversed or Merkstave: Disease, breakup, instability, lack of creativity. Nakedness, exposure, loss of illusion and false hope."),
                      Rune(runeName: "Gebo", runeImage: UIImage(named: ("Gebo.png"))!, runeDescription: "(G: Gift.) Gifts, both in the sense of sacrifice and of generosity, indicating balance. All matters in relation to exchanges, including contracts, personal relationships and partnerships. Gebo Merkstave (Gebo cannot be reversed, but may lie in opposition): Greed, loneliness, dependence, over-sacrifice. Obligation, toll, privation, bribery."),
                      Rune(runeName: "Wunjo", runeImage: UIImage(named: ("Wunjo.png"))!, runeDescription: "(W or V: Joy.) Joy, comfort, pleasure. Fellowship, harmony, prosperity. Ecstasy, glory, spiritual reward, but also the possibility of going \"over the top\". If restrained, the meaning is general success and recognition of worth.\n\n Wunjo Reversed or Merkstave: Stultification, sorrow, strife, alienation. Delirium, intoxication, possession by higher forces, impractical enthusiasm. Raging frenzy, berzerker."),
                      
                      Rune(runeName: "Hagalaz", runeImage: UIImage(named: ("Hagalaz.png"))!, runeDescription: "(H: Hail.) Wrath of nature, destructive, uncontrolled forces, especially the weather, or within the unconscious. Tempering, testing, trial. Controlled crisis, leading to completion, inner harmony. Hagalaz Merkstave (Hagalaz cannot be reversed, but may lie in opposition): Natural disaster, catastrophe. Stagnation, loss of power. Pain, loss, suffering, hardship, sickness, crisis."),
                      Rune(runeName: "Nauthiz", runeImage: UIImage(named: ("Nauthiz.png"))!, runeDescription: "(N: Need.) Delays, restriction. Resistance leading to strength, innovation, need-fire (self-reliance). Distress, confusion, conflict, and the power of will to overcome them. Endurance, survival, determination. A time to exercise patience. Recognition of one's fate. Major self-initiated change. Face your fears.\n\n Nauthiz Reversed or Merkstave: Constraint of freedom, distress, toil, drudgery, laxity. Necessity, extremity, want, deprivation, starvation, need, poverty, emotional hunger."),
                      Rune(runeName: "Isa", runeImage: UIImage(named: ("Isa.png"))!, runeDescription: "(I: Ice.) A challenge or frustration. Psychological blocks to thought or activity, including grievances. Standstill, or a time to turn inward and wait for what is to come, or to seek clarity. This rune reinforces runes around it. Isa Merkstave (Isa cannot be reversed, but may lie in opposition): Ego-mania, dullness, blindness, dissipation. Treachery, illusion, deceit, betrayal, guile, stealth, ambush, plots."),
                      Rune(runeName: "Jera", runeImage: UIImage(named: ("Jera.png"))!, runeDescription: "(J or Y: A year, a good harvest.) The results of earlier efforts are realized. A time of peace and happiness, fruitful season. It can break through stagnancy. Hopes and expectations of peace and prosperity. The promise of success earned. Life cycle, cyclical pattern of the universe. Everything changes, in its own time. Jera Merkstave (Jera cannot be reversed, but may lie in opposition): Sudden setback, reversals. A major change, repetition, bad timing, poverty, conflict."),
                      Rune(runeName: "Eihwaz", runeImage: UIImage(named: ("Eihwaz.png"))!, runeDescription: "(EI: Yew tree.) Strength, reliability, dependability, trustworthiness. Enlightenment, endurance. Defense, protection. The driving force to acquire, providing motivation and a sense of purpose. Indicates that you have set your sights on a reasonable target and can achieve your goals. An honest man who can be relied upon.\n\n Eihwaz Reversed or Merkstave: Confusion, destruction, dissatisfaction, weakness."),
                      Rune(runeName: "Perthro", runeImage: UIImage(named: ("Perthro.png"))!, runeDescription: "(P: Lot cup, vagina.) Uncertain meaning, a secret matter, a mystery, hidden things and occult abilities. Initiation, knowledge of one's destiny, knowledge of future matters, determining the future or your path. Pertaining to things feminine, feminine mysteries including female fertility, and vagina. Good lot, fellowship and joy. Evolutionary change.\n\n Perthro Reversed or Merkstave: Addiction, stagnation, loneliness, malaise."),
                      Rune(runeName: "Algiz", runeImage: UIImage(named: ("Algiz.png"))!, runeDescription: "(Z or -R: Elk, protection.) Protection, a shield. The protective urge to shelter oneself or others. Defense, warding off of evil, shield, guardian. Connection with the gods, awakening, higher life. It can be used to channel energies appropriately. Follow your instincts. Keep hold of success or maintain a position won or earned.\n\n Algiz Reversed: or Merkstave: Hidden danger, consumption by divine forces, loss of divine link. Taboo, warning, turning away, that which repels."),
                      Rune(runeName: "Sowilo", runeImage: UIImage(named: ("Sowilo.png"))!, runeDescription: "(S: The sun.) Success, goals achieved, honor. The life-force, health. A time when power will be available to you for positive changes in your life, victory, health, and success. Contact between the higher self and the unconscious. Wholeness, power, elemental force, sword of flame, cleansing fire. Sowilo Merkstave (Sowilo cannot be reversed, but may lie in opposition): False goals, bad counsel, false success, gullibility, loss of goals. Destruction, retribution, justice, casting down of vanity. Wrath of god."),
                      
                      Rune(runeName: "Tiwaz", runeImage: UIImage(named: ("Tiwaz.png"))!, runeDescription: "(T: Tyr, the sky god.) Honor, justice, leadership and authority. Analysis, rationality. Knowing where one's true strengths lie. Willingness to self-sacrifice. Victory and success in any competition or in legal matters.\n\n Tiwaz Reversed or Merkstave: One's energy and creative flow are blocked. Mental paralysis, over-analysis, over-sacrifice, injustice, imbalance. Strife, war, conflict, failure in competition. Dwindling passion, difficulties in communication, and possibly separation."),
                      Rune(runeName: "Berkano", runeImage: UIImage(named: ("Berkano.png"))!, runeDescription: "(B: Berchta, the birch-goddess.) Birth, general fertility, both mental and physical and personal growth, liberation. Regenerative power and light of spring, renewal, promise of new beginnings, new growth. Arousal of desire. A love affair or new birth. The prospering of an enterprise or venture.\n\n Berkano Reversed or Merkstave: Family problems and or domestic troubles. Anxiety about someone close to you. Carelessness, abandon, loss of control. Blurring of consciousness, deceit, sterility, stagnation."),
                      Rune(runeName: "Ehwaz", runeImage: UIImage(named: ("Ehwaz.png"))!, runeDescription: "(E: Horse, two horses.) Transportation. May represent a horse, car, plane, boat or other vehicle. Movement and change for the better. Gradual development and steady progress are indicated. Harmony, teamwork, trust, loyalty. An ideal marriage or partnership. Confirmation beyond doubt the meanings of the runes around it.\n\n Ehwaz Reversed or Merkstave: This is not really a negative rune. A change is perhaps craved. Feeling restless or confined in a situation. Reckless haste, disharmony, mistrust, betrayal."),
                      Rune(runeName: "Mannaz", runeImage: UIImage(named: ("Mannaz.png"))!, runeDescription: "(M: Man, mankind.) The Self; the individual or the human race. Your attitude toward others and their attitudes towards you. Friends and enemies, social order. Intelligence, forethought, create, skill, ability. Divine structure, intelligence, awareness. Expect to receive some sort of aid or cooperation now.\n\n Mannaz Reversed or Merkstave: Depression, mortality, blindness, self-delusion. Cunning, slyness, manipulation, craftiness, calculation. Expect no help now."),
                      Rune(runeName: "Laguz", runeImage: UIImage(named: ("Laguz.png"))!, runeDescription: "(L: Water, or a leek.) Flow, water, sea, a fertility source, the healing power of renewal. Life energy and organic growth. Imagination and psychic matters. Dreams, fantasies, mysteries, the unknown, the hidden, the deep, the underworld. Success in travel or acquisition, but with the possibility of loss.\n\n Laguz Reversed or Merkstave: An indication of a period of confusion in your life. You may be making wrong decisions and poor judgements. Lack of creativity and feelings of being in a rut. Fear, circular motion, avoidance, withering. Madness, obsession, despair, perversity, sickness, suicide."),
                      Rune(runeName: "Ingwaz", runeImage: UIImage(named: ("Ingwaz.png"))!, runeDescription: "(NG: Ing, the earth god.) Male fertility, gestation, internal growth. Common virtues, common sense, simple strengths, family love, caring, human warmth, the home. Rest stage, a time of relief, of no anxiety. A time when all loose strings are tied and you are free to move in a new direction. Listen to yourself. Ingwaz Merkstave (Ingwaz cannot be reversed, but may lie in opposition): Impotence, movement without change. Production, toil, labor, work."),
                      Rune(runeName: "Dagaz", runeImage: UIImage(named: ("Dagaz.png"))!, runeDescription: "(D: Day or dawn.) Breakthrough, awakening, awareness. Daylight clarity as opposed to nighttime uncertainty. A time to plan or embark upon an enterprise. The power of change directed by your own will, transformation. Hope/happiness, the ideal. Security and certainty. Growth and release. Balance point, the place where opposites meet. Dagaz Merkstave (Dagaz cannot be reversed, but may lie in opposition): A completion, ending, limit, coming full circle. Blindness, hopelessness."),
                      Rune(runeName: "Othala", runeImage: UIImage(named: ("Othala.png"))!, runeDescription: "(O: Ancestral property.) Inherited property or possessions, a house, a home. What is truly important to one. Group order, group prosperity. Land of birth, spiritual heritage, experience and fundamental values. Aid in spiritual and physical journeys. Source of safety, increase and abundance.\n\n Othala Reversed or Merkstave: Lack of customary order, totalitarianism, slavery, poverty, homelessness. Bad karma, prejudice, clannishness, provincialism. What a man is bound to.")]
    
    var runesCastArray: [UIImage] = [] // Array to save Rune images for 3 or 5 Rune Cast
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var runeOne: UIImageView!
    @IBOutlet weak var runeTwo: UIImageView!
    @IBOutlet weak var runeThree: UIImageView!
    @IBOutlet weak var runeFour: UIImageView!
    @IBOutlet weak var runeFive: UIImageView!
    @IBOutlet weak var runeSix: UIImageView!
    @IBOutlet weak var runeSeven: UIImageView!
    @IBOutlet weak var runeEight: UIImageView!
    @IBOutlet weak var runeNine: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        if #available(iOS 11.0, *) {
            navigationController?.navigationBar.prefersLargeTitles = false
        } else {
            // Fallback on earlier versions
        }
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        segmentedControl.selectedSegmentIndex = 0
        odinCast()
    }
    
    var runeCast = 0
    
    func odinCast() {
        
        runeCast = 1
        runeOne.isHidden = true
        runeTwo.isHidden = true
        runeThree.isHidden = true
        runeFour.isHidden = true
        runeFive.isHidden = false
        runeFive.image = #imageLiteral(resourceName: "Blank")
        runeSix.isHidden = true
        runeSeven.isHidden = true
        runeEight.isHidden = true
        runeNine.isHidden = true

        
    }
    
    func nornCast() {
        
        runeCast = 3
        runeOne.isHidden = true
        runeTwo.isHidden = false
        runeTwo.image = #imageLiteral(resourceName: "Blank")
        runeThree.isHidden = true
        runeFour.isHidden = false
        runeFour.image = #imageLiteral(resourceName: "Blank")
        runeFive.isHidden = false
        runeFive.image = #imageLiteral(resourceName: "Blank")
        runeSix.isHidden = true
        runeSeven.isHidden = true
        runeEight.isHidden = true
        runeNine.isHidden = true
        
    }
    
    func tyrCast() {
        
        runeCast = 5
        runeOne.isHidden = false
        runeOne.image = #imageLiteral(resourceName: "Blank")
        runeTwo.isHidden = false
        runeTwo.image = #imageLiteral(resourceName: "Blank")
        runeThree.isHidden = false
        runeThree.image = #imageLiteral(resourceName: "Blank")
        runeFour.isHidden = false
        runeFour.image = #imageLiteral(resourceName: "Blank")
        runeFive.isHidden = false
        runeFive.image = #imageLiteral(resourceName: "Blank")
        runeSix.isHidden = true
        runeSeven.isHidden = true
        runeEight.isHidden = true
        runeNine.isHidden = true
        
    }
    
    func freyjaCast() {
        
        runeCast = 7
        runeOne.isHidden = true
        runeTwo.isHidden = false
        runeTwo.image = #imageLiteral(resourceName: "Blank")
        runeThree.isHidden = true
        runeFour.isHidden = false
        runeFour.image = #imageLiteral(resourceName: "Blank")
        runeFive.isHidden = false
        runeFive.image = #imageLiteral(resourceName: "Blank")
        runeSix.isHidden = false
        runeSix.image = #imageLiteral(resourceName: "Blank")
        runeSeven.isHidden = false
        runeSeven.image = #imageLiteral(resourceName: "Blank")
        runeEight.isHidden = false
        runeEight.image = #imageLiteral(resourceName: "Blank")
        runeNine.isHidden = false
        runeNine.image = #imageLiteral(resourceName: "Blank")
        
    }
    
    @IBAction func castType(_ sender: Any) {
        
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            odinCast()
        case 1:
            nornCast()
        case 2:
            tyrCast()
        case 3:
            freyjaCast()
        default: break
        }
        
    }
    
    @IBAction func castButtonPressed(_ sender: Any) {
        
        runesCastArray = []
        
        if runeCast == 1 {
            
            let randomRunes = runesArray[Int(arc4random_uniform(UInt32(runesArray.count)))]
            runesCastArray.append(randomRunes.runeImage)
            
            runeFive.image = runesCastArray[0]
            
        } else if runeCast == 3 {
            
            for _ in 0...2 {
                
                let randomRunes = runesArray[Int(arc4random_uniform(UInt32(runesArray.count)))]
                runesCastArray.append(randomRunes.runeImage)
                
            }
            
            runeTwo.image = runesCastArray[0]
            runeFive.image = runesCastArray[1]
            runeFour.image = runesCastArray[2]
            
        }
            
        else if runeCast == 5 {
            
            for _ in 0...4 {
                
                let randomRunes = runesArray[Int(arc4random_uniform(UInt32(runesArray.count)))]
                runesCastArray.append(randomRunes.runeImage)
            }
            
            runeOne.image = runesCastArray[0]
            runeTwo.image = runesCastArray[1]
            runeThree.image = runesCastArray[2]
            runeFour.image = runesCastArray[3]
            runeFive.image = runesCastArray[4]
            
        }
        
        else if runeCast == 7 {
            
            for _ in 0...6 {
                
                let randomRunes = runesArray[Int(arc4random_uniform(UInt32(runesArray.count)))]
                runesCastArray.append(randomRunes.runeImage)
            }
            
            runeTwo.image = runesCastArray[0]
            runeFour.image = runesCastArray[1]
            runeFive.image = runesCastArray[2]
            runeSix.image = runesCastArray[3]
            runeSeven.image = runesCastArray[4]
            runeEight.image = runesCastArray[5]
            runeNine.image = runesCastArray[6]
            
        }else {
            print(" Invalid Number")
        }
        
    }
}
