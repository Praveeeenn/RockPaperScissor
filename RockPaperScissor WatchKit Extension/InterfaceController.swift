//
//  InterfaceController.swift
//  RockPaperScissor WatchKit Extension
//
//  Created by Praveen on 09/03/20.
//  Copyright © 2020 Praveen. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    @IBOutlet weak var questionImage: WKInterfaceImage!
    @IBOutlet weak var answerGroup: WKInterfaceGroup!
    @IBOutlet weak var rockButton: WKInterfaceButton!
    @IBOutlet weak var paperButton: WKInterfaceButton!
    @IBOutlet weak var scissorsButton: WKInterfaceButton!
    @IBOutlet weak var levelCounterLabel: WKInterfaceLabel!
    @IBOutlet weak var timer: WKInterfaceTimer!
    @IBOutlet weak var resultLabel: WKInterfaceLabel!
    
    var allMoves = ["rock", "paper", "scissors"]
    var shouldWin = true
    var level = 1
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        rockButton.setBackgroundImage(UIImage(named: "rock"))
        paperButton.setBackgroundImage(UIImage(named: "paper"))
        scissorsButton.setBackgroundImage(UIImage(named: "scissors"))
        timer.start()
        newLevel()
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    func newLevel() {
        if level == 21 {
            resultLabel.setHidden(false)
            questionImage.setHidden(true)
            answerGroup.setHidden(true)
            return
        }
        levelCounterLabel.setText("\(level)/20")
        if arc4random_uniform(2) == 0 {
            setTitle("Win!!")
            shouldWin = true
        } else {
            shouldWin = false
            setTitle("Loose!")
        }
        allMoves.shuffle()
        questionImage.setImage(UIImage(named: allMoves[0]))
    }
    
    func check(for answer: String) {
        if allMoves[0] ==  answer {
            level += 1
            newLevel()
        } else {
            level -= 1
            if level < 1 { level = 1 }
            newLevel()
        }
    }
    
    @IBAction func rockAction() {
        print("Rockaction")
        if shouldWin {
            check(for: "scissors")
        } else {
            check(for: "paper")
        }
    }
    
    @IBAction func paperAction() {
        print("PaperAction")
        if shouldWin {
            check(for: "rock")
        } else {
            check(for: "scissors")
        }
    }
    
    @IBAction func scissorAction() {
        print("scissorAction")
        if shouldWin {
            check(for: "paper")
        } else {
            check(for: "rock")
        }
    }
    
}
