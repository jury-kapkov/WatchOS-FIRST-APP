//
//  MiddleLevelInterfaceController.swift
//  testWatch0.1 WatchKit Extension
//
//  Created by iMac on 15.12.2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import WatchKit
import Foundation


class MiddleLevelInterfaceController: WKInterfaceController {

    @IBOutlet weak var TaskText: WKInterfaceLabel!
    @IBOutlet weak var AnswerAButton: WKInterfaceButton!
    @IBOutlet weak var AnswerBButton: WKInterfaceButton!
    @IBOutlet weak var AnswerCButton: WKInterfaceButton!
    @IBOutlet weak var AnswerDButton: WKInterfaceButton!
    @IBOutlet weak var CurrentScore: WKInterfaceLabel!
    
    var level: Level = Level(mode: 2)
    var score: Int = 0
    var Answers: [Int] = [-1, -1, -1, -1]
    
    
    @IBAction func OnAClick() {
        if (level.result == Answers[0]){
            score += 1
            CurrentScore.setText("score: \(score)")
        }
        else{
            pushController(withName: "EndScreen", context: String(score))
            score = 0
        }
        GenerateLevel()
        super.willActivate()
    }
    
    @IBAction func OnBClick() {
        if (level.result == Answers[1]){
            score += 1
            CurrentScore.setText("score: \(score)")
        }
        else{
            pushController(withName: "EndScreen", context: String(score))
            score = 0
        }
        GenerateLevel()
        super.willActivate()
    }
    
    @IBAction func OnCClick() {
        if (level.result == Answers[2]){
            score += 1
            CurrentScore.setText("score: \(score)")
        }
        else{
            pushController(withName: "EndScreen", context: String(score))
            score = 0
        }
        GenerateLevel()
        super.willActivate()
    }
    
    @IBAction func OnDClick() {
        if (level.result == Answers[3]){
            score += 1
            CurrentScore.setText("score: \(score)")
        }
        else{
            pushController(withName: "EndScreen", context: String(score))
            score = 0
        }
        GenerateLevel()
        super.willActivate()
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        GenerateLevel()
        // Configure interface objects here.
    }
    
    func GenerateLevel() {
        level = Level(mode: 2)
         TaskText.setText(level.task)
         Answers = level.answersMiddle
         AnswerAButton.setTitle(String(Answers[0]))
         AnswerBButton.setTitle(String(Answers[1]))
         AnswerCButton.setTitle(String(Answers[2]))
         AnswerDButton.setTitle(String(Answers[3]))
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
