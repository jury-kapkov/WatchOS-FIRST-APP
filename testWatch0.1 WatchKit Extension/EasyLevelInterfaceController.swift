//
//  EasyLevelInterfaceController.swift
//  testWatch0.1 WatchKit Extension
//
//  Created by Admin on 19/09/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

import WatchKit
import Foundation


class EasyLevelInterfaceController: WKInterfaceController {
    
    var level: Level = Level(mode: 1)
    var score: Int = 0
    var sendContextArr: [String] = ["", "0"]
    
    @IBOutlet weak var EasyTask: WKInterfaceLabel!
    @IBOutlet weak var EasyScore: WKInterfaceLabel!
    
    @IBAction func OnNoCLick() {
        if (!level.answerEasy){
            score += 1
            EasyScore.setText("score: \(score)")
        }
        else{
            sendContextArr[0] = String(score)
            pushController(withName: "EndScreen", context: sendContextArr)
            score = 0
            EasyScore.setText("score: \(score)")
        }
        level = Level(mode: 1)
        EasyTask.setText(level.task)
        super.willActivate()
    }
    
    @IBAction func OnYesClick() {
        if (level.answerEasy){
            score += 1
            EasyScore.setText("score: \(score)")
        }
        else{
            sendContextArr[0] = String(score)
            pushController(withName: "EndScreen", context: sendContextArr)
            score = 0
            EasyScore.setText("score: \(score)")
        }
        level = Level(mode: 1)
        EasyTask.setText(level.task)
        super.willActivate()
    }
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        level = Level(mode: 1)
        EasyTask.setText(level.task)
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
