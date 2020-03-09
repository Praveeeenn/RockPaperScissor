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
    
    
    var allMoves = ["rock", "paper", "scissors"]
    var shouldWin = true
    var level = 1
    
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

    @IBAction func rockAction() {
        print("Rockaction")
    }
    
    @IBAction func paperAction() {
        print("PaperAction")
    }
    
    @IBAction func scissorAction() {
        print("scissorAction")
    }
    
}
