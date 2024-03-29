//
//  Level.swift
//  testWatch0.1
//
//  Created by Admin on 14/12/2019.
//  Copyright © 2019 Admin. All rights reserved.
//

//import WatchKit

class Level {
    var result: Int = 0
    var task: String = ""
    var answersMiddle: [Int] = [-1, -1, -1, -1]
    var answerEasy: Bool = false
    var mode: Int = -1
    
    init(mode: Int){
        self.mode = mode
        switch mode {
        case 1:
            let levelGenerator = LevelGenerator()
            task = levelGenerator.GenerateEasyLevel()
            answerEasy = levelGenerator.easyResult
        case 2:
            let levelGenerator = LevelGenerator()
            task = levelGenerator.GenerateMiddleLevel()
            answersMiddle = levelGenerator.GenerateAnswers()
            result = levelGenerator.result
        default:
            return
        }
    }
    
    func CheckEasyLevel(value: Bool) -> Bool {
        if (answerEasy == value) {
            return true
        }
        else
        {
            return false
        }
    }
    
}
